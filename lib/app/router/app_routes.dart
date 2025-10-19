abstract class AppRoutes {
  static const String feed = '/feed';
  static const String communities = '/communities';
  static const String education = '/education';
  static const String profile = '/profile';
  static const String mentorDetail = '/education/mentor/:id';
  static const String competenceMap = '/profile/competence-map';

  static String mentorDetailPath(String id) => '/education/mentor/$id';
}
