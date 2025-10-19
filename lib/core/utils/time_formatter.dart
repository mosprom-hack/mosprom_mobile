class TimeFormatter {
  static String formatTimeAgo(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays > 365) {
      final years = (difference.inDays / 365).floor();
      return years == 1 ? '1 год назад' : '$years ${_getYearPlural(years)} назад';
    } else if (difference.inDays > 30) {
      final months = (difference.inDays / 30).floor();
      return months == 1 ? '1 месяц назад' : '$months ${_getMonthPlural(months)} назад';
    } else if (difference.inDays > 0) {
      return difference.inDays == 1 ? '1 день назад' : '${difference.inDays} ${_getDayPlural(difference.inDays)} назад';
    } else if (difference.inHours > 0) {
      return difference.inHours == 1 ? '1 час назад' : '${difference.inHours} ${_getHourPlural(difference.inHours)} назад';
    } else if (difference.inMinutes > 0) {
      return difference.inMinutes == 1 ? '1 минуту назад' : '${difference.inMinutes} ${_getMinutePlural(difference.inMinutes)} назад';
    } else {
      return 'только что';
    }
  }

  static String _getYearPlural(int years) {
    if (years % 10 == 1 && years % 100 != 11) return 'год';
    if (years % 10 >= 2 && years % 10 <= 4 && (years % 100 < 10 || years % 100 >= 20)) return 'года';
    return 'лет';
  }

  static String _getMonthPlural(int months) {
    if (months % 10 == 1 && months % 100 != 11) return 'месяц';
    if (months % 10 >= 2 && months % 10 <= 4 && (months % 100 < 10 || months % 100 >= 20)) return 'месяца';
    return 'месяцев';
  }

  static String _getDayPlural(int days) {
    if (days % 10 == 1 && days % 100 != 11) return 'день';
    if (days % 10 >= 2 && days % 10 <= 4 && (days % 100 < 10 || days % 100 >= 20)) return 'дня';
    return 'дней';
  }

  static String _getHourPlural(int hours) {
    if (hours % 10 == 1 && hours % 100 != 11) return 'час';
    if (hours % 10 >= 2 && hours % 10 <= 4 && (hours % 100 < 10 || hours % 100 >= 20)) return 'часа';
    return 'часов';
  }

  static String _getMinutePlural(int minutes) {
    if (minutes % 10 == 1 && minutes % 100 != 11) return 'минуту';
    if (minutes % 10 >= 2 && minutes % 10 <= 4 && (minutes % 100 < 10 || minutes % 100 >= 20)) return 'минуты';
    return 'минут';
  }
}
