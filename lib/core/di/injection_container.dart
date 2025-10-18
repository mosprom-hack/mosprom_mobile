import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import '../../data/datasources/mentor_remote_data_source.dart';
import '../../data/repositories/mentor_repository_impl.dart';
import '../../domain/repositories/mentor_repository.dart';
import '../../domain/usecases/get_mentors.dart';
import '../../domain/usecases/get_mentor_by_id.dart';
import '../../presentation/pages/home/education/blocs/education_bloc.dart';
import '../../presentation/pages/home/education/mentor_detail/blocs/mentor_detail_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  _initBlocs();
  _initUseCases();
  _initRepositories();
  _initDataSources();
  _initCore();
  _initExternal();
}

void _initBlocs() {
  sl.registerFactory(
    () => EducationBloc(getMentors: sl()),
  );

  sl.registerFactory(
    () => MentorDetailBloc(getMentorById: sl()),
  );
}

void _initUseCases() {
  sl.registerLazySingleton(() => GetMentors(sl()));
  sl.registerLazySingleton(() => GetMentorById(sl()));
}

void _initRepositories() {
  sl.registerLazySingleton<MentorRepository>(
    () => MentorRepositoryImpl(remoteDataSource: sl()),
  );
}

void _initDataSources() {
  sl.registerLazySingleton<MentorRemoteDataSource>(
    () => MentorRemoteDataSourceImpl(dio: sl()),
  );
}

void _initCore() {}

void _initExternal() {
  sl.registerLazySingleton<Dio>(() {
    final dio = Dio();

    dio.options = BaseOptions(
      baseUrl: 'https://mikron-back.onrender.com',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ),
    );

    return dio;
  });
}
