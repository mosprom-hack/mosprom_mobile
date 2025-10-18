import '../models/mentor_model.dart';

abstract class MentorRemoteDataSource {
  Future<List<MentorModel>> getMentors();
}

class MentorRemoteDataSourceImpl implements MentorRemoteDataSource {
  @override
  Future<List<MentorModel>> getMentors() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return _mockMentors;
  }

  static final List<MentorModel> _mockMentors = [
    const MentorModel(
      id: '1',
      firstName: 'Олег',
      lastName: 'Сдавайкин',
      specialization: 'Product Management',
      bio: 'Опытный продакт-менеджер с 10+ годами опыта',
    ),
    const MentorModel(
      id: '2',
      firstName: 'Сергей',
      lastName: 'Координатов',
      specialization: 'Project Management',
      bio: 'Координирую команды и проекты',
    ),
    const MentorModel(
      id: '3',
      firstName: 'Мари',
      lastName: 'Процессовна',
      specialization: 'Business Analysis',
      bio: 'Оптимизация бизнес-процессов',
    ),
    const MentorModel(
      id: '4',
      firstName: 'Павел',
      lastName: 'Контролёв',
      specialization: 'Quality Assurance',
      bio: 'Контроль качества и тестирование',
    ),
    const MentorModel(
      id: '5',
      firstName: 'Эдуард',
      lastName: 'Аналитиков',
      specialization: 'Data Analytics',
      bio: 'Анализ данных и метрик',
    ),
    const MentorModel(
      id: '6',
      firstName: 'Григорий',
      lastName: 'Гипотезов',
      specialization: 'Research & Development',
      bio: 'Исследования и разработка гипотез',
    ),
    const MentorModel(
      id: '7',
      firstName: 'Максим',
      lastName: 'Договоров',
      specialization: 'Sales & Partnerships',
      bio: 'Переговоры и партнерство',
    ),
    const MentorModel(
      id: '8',
      firstName: 'Виктор',
      lastName: 'Слушаев',
      specialization: 'Customer Success',
      bio: 'Работа с клиентами',
    ),
    const MentorModel(
      id: '9',
      firstName: 'Анна',
      lastName: 'Кодова',
      specialization: 'Frontend Development',
      bio: 'Разработка пользовательских интерфейсов',
    ),
    const MentorModel(
      id: '10',
      firstName: 'Дмитрий',
      lastName: 'Серверов',
      specialization: 'Backend Development',
      bio: 'Серверная разработка и API',
    ),
    const MentorModel(
      id: '11',
      firstName: 'Елена',
      lastName: 'Дизайнова',
      specialization: 'UI/UX Design',
      bio: 'Проектирование интерфейсов',
    ),
    const MentorModel(
      id: '12',
      firstName: 'Игорь',
      lastName: 'Девопсов',
      specialization: 'DevOps Engineering',
      bio: 'Автоматизация и инфраструктура',
    ),
    const MentorModel(
      id: '13',
      firstName: 'Мария',
      lastName: 'Тестова',
      specialization: 'Test Automation',
      bio: 'Автоматизированное тестирование',
    ),
    const MentorModel(
      id: '14',
      firstName: 'Александр',
      lastName: 'Архитектов',
      specialization: 'Software Architecture',
      bio: 'Проектирование архитектуры систем',
    ),
    const MentorModel(
      id: '15',
      firstName: 'Наталья',
      lastName: 'Скрамова',
      specialization: 'Agile Coaching',
      bio: 'Agile-коучинг и фасилитация',
    ),
    const MentorModel(
      id: '16',
      firstName: 'Роман',
      lastName: 'Безопасов',
      specialization: 'Cybersecurity',
      bio: 'Информационная безопасность',
    ),
    const MentorModel(
      id: '17',
      firstName: 'Ольга',
      lastName: 'Контентова',
      specialization: 'Content Strategy',
      bio: 'Стратегия контента и копирайтинг',
    ),
    const MentorModel(
      id: '18',
      firstName: 'Андрей',
      lastName: 'Мобильный',
      specialization: 'Mobile Development',
      bio: 'Разработка мобильных приложений',
    ),
    const MentorModel(
      id: '19',
      firstName: 'Юлия',
      lastName: 'Маркетова',
      specialization: 'Digital Marketing',
      bio: 'Цифровой маркетинг и продвижение',
    ),
    const MentorModel(
      id: '20',
      firstName: 'Владимир',
      lastName: 'Алгоритмов',
      specialization: 'Machine Learning',
      bio: 'Машинное обучение и AI',
    ),
    const MentorModel(
      id: '21',
      firstName: 'Светлана',
      lastName: 'Эйчарова',
      specialization: 'HR & Recruitment',
      bio: 'Подбор и развитие персонала',
    ),
    const MentorModel(
      id: '22',
      firstName: 'Денис',
      lastName: 'Блокчейнов',
      specialization: 'Blockchain Development',
      bio: 'Разработка блокчейн-решений',
    ),
    const MentorModel(
      id: '23',
      firstName: 'Кристина',
      lastName: 'Графова',
      specialization: 'Graphic Design',
      bio: 'Графический дизайн и брендинг',
    ),
    const MentorModel(
      id: '24',
      firstName: 'Артем',
      lastName: 'Облаков',
      specialization: 'Cloud Architecture',
      bio: 'Облачные технологии и AWS/Azure',
    ),
    const MentorModel(
      id: '25',
      firstName: 'Екатерина',
      lastName: 'Видеова',
      specialization: 'Video Production',
      bio: 'Видеопродакшн и монтаж',
    ),
    const MentorModel(
      id: '26',
      firstName: 'Николай',
      lastName: 'Базовый',
      specialization: 'Database Administration',
      bio: 'Администрирование баз данных',
    ),
    const MentorModel(
      id: '27',
      firstName: 'Алиса',
      lastName: 'Запросова',
      specialization: 'SQL & Data Engineering',
      bio: 'Инженерия данных и SQL',
    ),
    const MentorModel(
      id: '28',
      firstName: 'Сергей',
      lastName: 'Метриков',
      specialization: 'Product Analytics',
      bio: 'Продуктовая аналитика',
    ),
    const MentorModel(
      id: '29',
      firstName: 'Татьяна',
      lastName: 'Коммуникова',
      specialization: 'Communications',
      bio: 'Корпоративные коммуникации',
    ),
    const MentorModel(
      id: '30',
      firstName: 'Вадим',
      lastName: 'Стартапов',
      specialization: 'Entrepreneurship',
      bio: 'Создание и развитие стартапов',
    ),
  ];
}
