import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import '../../data/datasources/mentor_remote_data_source.dart';
import '../../data/repositories/mentor_repository_impl.dart';
import '../../domain/repositories/mentor_repository.dart';
import '../../domain/usecases/get_mentors.dart';
import '../../presentation/pages/home/education/blocs/education_bloc.dart';

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
}

void _initUseCases() {
  sl.registerLazySingleton(() => GetMentors(sl()));
}

void _initRepositories() {
  sl.registerLazySingleton<MentorRepository>(
    () => MentorRepositoryImpl(remoteDataSource: sl()),
  );
}

void _initDataSources() {
  sl.registerLazySingleton<MentorRemoteDataSource>(
    () => MentorRemoteDataSourceImpl(),
  );
}

void _initCore() {}

void _initExternal() {
  sl.registerLazySingleton<Dio>(() {
    final dio = Dio();

    dio.options = BaseOptions(
      baseUrl: 'https://api.example.com',
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
