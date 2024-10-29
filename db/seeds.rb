# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

faculties = [
  { name: 'Информатика и вычислительная техника'},
  { name: 'Автоматизация, мехатроника и управление' },
  { name: 'Инженерно-строительный' },
  { name: 'Прикладная лингвистика' },
]

departments = [
  # Информатика и вычислительная техника
  { name: 'Высшая математика', faculty_id: 1 },
  { name: 'Информационная безопасность в вычислительных системах и сетях', faculty_id: 1 },
  { name: 'Информационные системы в строительстве', faculty_id: 1 },
  { name: 'Информационные технологии', faculty_id: 1 },
  { name: 'Кибербезопасность информационных систем', faculty_id: 1 },
  # Автоматизация, мехатроника и управление
  { name: 'Прикладные математика и физика', faculty_id: 2 },
  { name: 'Электроника и наноэлектроника', faculty_id: 2 },
  { name: 'Приборостроение', faculty_id: 2 },
  # Инженерно-строительный
  { name: 'Водоснабжение и водоотведение', faculty_id: 3 },
  { name: 'Строительные материалы', faculty_id: 3 },
  { name: 'Технологический инжиниринг и экспертиза в стройиндустрии', faculty_id: 3 },
  # Прикладная лингвистика
  { name: 'Мировые языки и культуры', faculty_id: 4 },
  { name: 'Интегративная и цифровая лингвистика', faculty_id: 4 },
  { name: 'Иностранный язык в сфере социогуманитарных наук', faculty_id: 4 },
]

groups = [
  # Высшая математика
  { name: 'М-41', faculty_id: 1, department_id: 1, enrollment_year: 2021, course: 4 },
  { name: 'М-31', faculty_id: 1, department_id: 1, enrollment_year: 2022, course: 3 },
  # Информационная безопасность в вычислительных системах и сетях
  { name: 'ИБ-21', faculty_id: 1, department_id: 2, enrollment_year: 2023, course: 2 },
  { name: 'ИБ-22', faculty_id: 1, department_id: 2, enrollment_year: 2023, course: 2 },
  # Информационные системы в строительстве
  { name: 'ИС-31', faculty_id: 1, department_id: 3, enrollment_year: 2022, course: 3 },
  { name: 'ИС-32', faculty_id: 1, department_id: 3, enrollment_year: 2022, course: 3 },
  # Кибербезопасность информационных систем
  { name: 'КБ-41', faculty_id: 1, department_id: 5, enrollment_year: 2021, course: 4 },
  { name: 'КБ-31', faculty_id: 1, department_id: 5, enrollment_year: 2022, course: 3 },
  # Прикладные математика и физика
  { name: 'ПМФ-11', faculty_id: 2, department_id: 6, enrollment_year: 2024, course: 1 },
  { name: 'ПМФ-12', faculty_id: 2, department_id: 6, enrollment_year: 2024, course: 1 },
  # Электроника и наноэлектроника
  { name: 'ЭН-21', faculty_id: 2, department_id: 7, enrollment_year: 2023, course: 2 },
  { name: 'ЭН-22', faculty_id: 2, department_id: 7, enrollment_year: 2023, course: 2 },
  # Строительные материалы
  { name: 'СМ-31', faculty_id: 3, department_id: 10, enrollment_year: 2022, course: 3 },
  { name: 'СМ-32', faculty_id: 3, department_id: 10, enrollment_year: 2022, course: 3 },
  # Мировые языки и культуры
  { name: 'МЯК-21', faculty_id: 4, department_id: 13, enrollment_year: 2023, course: 2 },
  { name: 'МЯК-22', faculty_id: 4, department_id: 13, enrollment_year: 2023, course: 2 },
  # Интегративная и цифровая лингвистика
  { name: 'ИДЛ-21', faculty_id: 4, department_id: 14, enrollment_year: 2023, course: 2 },
  { name: 'ИДЛ-22', faculty_id: 4, department_id: 14, enrollment_year: 2023, course: 2 },

  # Закончили учебу (19-22 ids)
  { name: 'М-41', faculty_id: 1, department_id: 1, enrollment_year: 2019, course: 4, graduated: true },
  { name: 'М-41', faculty_id: 1, department_id: 1, enrollment_year: 2019, course: 4, graduated: true },
  { name: 'ИБ-41', faculty_id: 1, department_id: 2, enrollment_year: 2018, course: 4, graduated: true },
  { name: 'ИБ-42', faculty_id: 1, department_id: 2, enrollment_year: 2018, course: 4, graduated: true },
]

students = [
  # Высшая математика
  { first_name: 'Алексей', last_name: 'Иванов', patronymic: 'Иванович', gender: 'male', birth_date: '2003-05-15', has_children: false, scholarship_amount: 15000, group_id: 1 },
  { first_name: 'Мария', last_name: 'Сидорова', patronymic: 'Петровна', gender: 'female', birth_date: '2002-07-22', has_children: false, scholarship_amount: 12000, group_id: 2 },
  # Информационная безопасность в вычислительных системах и сетях
  { first_name: 'Дмитрий', last_name: 'Петров', patronymic: 'Александрович', gender: 'male', birth_date: '2004-02-18', has_children: false, scholarship_amount: 13000, group_id: 3 },
  { first_name: 'Елена', last_name: 'Кузнецова', patronymic: 'Владимировна', gender: 'female', birth_date: '2003-11-10', has_children: true, scholarship_amount: 10000, group_id: 4 },
  # Информационные системы в строительстве
  { first_name: 'Андрей', last_name: 'Николаев', patronymic: 'Сергеевич', gender: 'male', birth_date: '2002-09-30', has_children: false, scholarship_amount: 14000, group_id: 5 },
  { first_name: 'Ольга', last_name: 'Новикова', patronymic: 'Дмитриевна', gender: 'female', birth_date: '2003-04-25', has_children: false, scholarship_amount: 15000, group_id: 6 },
  # Кибербезопасность информационных систем
  { first_name: 'Игорь', last_name: 'Федоров', patronymic: 'Николаевич', gender: 'male', birth_date: '2001-01-05', has_children: false, scholarship_amount: 16000, group_id: 7 },
  { first_name: 'Анна', last_name: 'Михайлова', patronymic: 'Васильевна', gender: 'female', birth_date: '2002-03-14', has_children: true, scholarship_amount: 11000, group_id: 8 },
  # Прикладные математика и физика
  { first_name: 'Сергей', last_name: 'Лебедев', patronymic: 'Павлович', gender: 'male', birth_date: '2004-06-12', has_children: false, scholarship_amount: 17000, group_id: 9 },
  { first_name: 'Екатерина', last_name: 'Орлова', patronymic: 'Геннадьевна', gender: 'female', birth_date: '2003-12-01', has_children: false, scholarship_amount: 18000, group_id: 10 },
  # Электроника и наноэлектроника
  { first_name: 'Никита', last_name: 'Семенов', patronymic: 'Алексеевич', gender: 'male', birth_date: '2003-03-01', has_children: false, scholarship_amount: 16000, group_id: 11 },
  { first_name: 'Ирина', last_name: 'Зайцева', patronymic: 'Сергеевна', gender: 'female', birth_date: '2002-11-05', has_children: true, scholarship_amount: 12000, group_id: 12 },
  # Строительные материалы
  { first_name: 'Максим', last_name: 'Попов', patronymic: 'Николаевич', gender: 'male', birth_date: '2002-08-19', has_children: false, scholarship_amount: 15000, group_id: 13 },
  { first_name: 'Дарья', last_name: 'Тарасова', patronymic: 'Андреевна', gender: 'female', birth_date: '2003-02-25', has_children: false, scholarship_amount: 14000, group_id: 14 },
  # Мировые языки и культуры
  { first_name: 'Владимир', last_name: 'Яковлев', patronymic: 'Михайлович', gender: 'male', birth_date: '2004-07-11', has_children: false, scholarship_amount: 16000, group_id: 15 },
  { first_name: 'Алина', last_name: 'Волкова', patronymic: 'Семеновна', gender: 'female', birth_date: '2003-05-18', has_children: false, scholarship_amount: 13000, group_id: 16 },
  # Интегративная и цифровая лингвистика
  { first_name: 'Константин', last_name: 'Громов', patronymic: 'Викторович', gender: 'male', birth_date: '2004-04-07', has_children: false, scholarship_amount: 14000, group_id: 17 },
  { first_name: 'Евгения', last_name: 'Кириллова', patronymic: 'Николаевна', gender: 'female', birth_date: '2002-09-14', has_children: true, scholarship_amount: 12000, group_id: 18 },

  # Закончили учебу
  { first_name: 'Николай', last_name: 'Смирнов', patronymic: 'Петрович', gender: 'male', birth_date: '2001-07-19', has_children: false, scholarship_amount: 13500, group_id: 19 },
  { first_name: 'Анна', last_name: 'Васильева', patronymic: 'Андреевна', gender: 'female', birth_date: '2001-12-05', has_children: false, scholarship_amount: 14500, group_id: 20 },
  { first_name: 'Иван', last_name: 'Кузнецов', patronymic: 'Дмитриевич', gender: 'male', birth_date: '2000-04-11', has_children: false, scholarship_amount: 13000, group_id: 21 },
  { first_name: 'Елена', last_name: 'Попова', patronymic: 'Владимировна', gender: 'female', birth_date: '2001-10-21', has_children: true, scholarship_amount: 16000, group_id: 22 },
  { first_name: 'Максим', last_name: 'Волков', patronymic: 'Александрович', gender: 'male', birth_date: '2001-06-03', has_children: false, scholarship_amount: 14000, group_id: 19 }

]

disciplines = [
  { name: 'Математика' },
  { name: 'Физика' },
  { name: 'Информатика' },
  { name: 'Экономика' },
  { name: 'Правоведение' },
  { name: 'Химия' },
  { name: 'История' },
  { name: 'Теоретическая механика' },
  { name: 'Электротехника' },
  { name: 'Философия' },
  { name: 'Алгебра' },
  { name: 'Геометрия' },
  { name: 'Теория вероятностей' },
  { name: 'Математический анализ' },
  { name: 'Статистика' },
  { name: 'Программирование' },
  { name: 'Социология' },
  { name: 'Политология' },
  { name: 'Английский язык' },
  { name: 'Немецкий язык' },
  { name: 'Физическая культура' },
  { name: 'Этика' },
  { name: 'Логика' },
  { name: 'Гидравлика' },
  { name: 'Микроэкономика' },
  { name: 'Макроэкономика' },
  { name: 'Биология' },
  { name: 'Инженерная графика' },
  { name: 'Машиностроение' },
  { name: 'Метрология' },
  { name: 'Психология' }
]

teachers = [
  { first_name: 'Алексей', last_name: 'Петров', patronymic: 'Иванович', gender: 'male', birth_date: '1980-02-15', has_children: true, salary: 80000, kind: 1, has_phd: true, number_of_children: 0, department_id: 1 },
  { first_name: 'Мария', last_name: 'Сидорова', patronymic: 'Александровна', gender: 'female', birth_date: '1985-06-20', has_children: true, salary: 75000, kind: 0, has_phd: false, number_of_children: 1, department_id: 2 },
  { first_name: 'Дмитрий', last_name: 'Кузнецов', patronymic: 'Владимирович', gender: 'male', birth_date: '1972-11-05', has_children: true, salary: 120000, kind: 2, has_phd: true, number_of_children: 2, department_id: 3 },
  { first_name: 'Екатерина', last_name: 'Иванова', patronymic: 'Сергеевна', gender: 'female', birth_date: '1990-09-14', has_children: false, salary: 60000, kind: 3, has_phd: false, number_of_children: 0, department_id: 4 },
  { first_name: 'Олег', last_name: 'Николаев', patronymic: 'Игоревич', gender: 'male', birth_date: '1977-12-30', has_children: true, salary: 95000, kind: 1, has_phd: true, number_of_children: 3, department_id: 5 },
  { first_name: 'Анна', last_name: 'Миронова', patronymic: 'Владимировна', gender: 'female', birth_date: '1983-03-12', has_children: true, salary: 70000, kind: 0, has_phd: false, number_of_children: 1, department_id: 6 },
  { first_name: 'Владимир', last_name: 'Смирнов', patronymic: 'Николаевич', gender: 'male', birth_date: '1968-01-23', has_children: false, salary: 130000, kind: 2, has_phd: true, number_of_children: 0, department_id: 7 },
  { first_name: 'Светлана', last_name: 'Орлова', patronymic: 'Андреевна', gender: 'female', birth_date: '1995-08-19', has_children: false, salary: 55000, kind: 3, has_phd: false, number_of_children: 0, department_id: 8 },
  { first_name: 'Павел', last_name: 'Васильев', patronymic: 'Алексеевич', gender: 'male', birth_date: '1988-04-09', has_children: true, salary: 85000, kind: 1, has_phd: true, number_of_children: 2, department_id: 9 },
  { first_name: 'Ирина', last_name: 'Зайцева', patronymic: 'Борисовна', gender: 'female', birth_date: '1979-10-16', has_children: true, salary: 92000, kind: 2, has_phd: true, number_of_children: 1, department_id: 10 }
]


theses = [
  { title: 'Разработка жилого комплекса в условиях плотной застройки', student_id: 19, teacher_id: 1, pass_date: '2024-06-16' },
  { title: 'Алгоритмы машинного обучения для обработки больших данных', student_id: 20, teacher_id: 2, pass_date: '2024-06-16' },
  { title: 'Проектирование роботизированной линии сборки', student_id: 21, teacher_id: 3, pass_date: '2024-06-16' },
  { title: 'Разработка бизнес-плана для стартапа в сфере IT', student_id: 22, teacher_id: 4, pass_date: '2023-06-16' },
]

topics = [
  { name: 'Современные методы проектирования жилых комплексов', teacher_id: 1, department_id: 1, kind: 1, pass_date: '2008-02-10' },
  { name: 'Машинное обучение в анализе больших данных', teacher_id: 3, department_id: 2, kind: 0, pass_date: '2011-01-29' },
  { name: 'Роботизация производственных процессов', teacher_id: 5, department_id: 3, kind: 1, pass_date: '2005-05-11' },
  { name: 'Управление проектами в условиях неопределенности', teacher_id: 7, department_id: 4, kind: 0, pass_date: '1997-08-10' },
  { name: 'Правовые аспекты международного права', teacher_id: 9, department_id: 5, kind: 0, pass_date: '2003-08-01' },
  { name: 'Инновации в биомедицинской инженерии', teacher_id: 10, department_id: 6, kind: 1, pass_date: '2005-09-01' },
]

exams = [
  { student_id: 1, discipline_id: 1, teacher_id: 1, grade: 5, semester: 1 },
  { student_id: 2, discipline_id: 2, teacher_id: 1, grade: 4, semester: 1 },
  { student_id: 3, discipline_id: 3, teacher_id: 1, grade: 3, semester: 2 },
  { student_id: 4, discipline_id: 4, teacher_id: 1, grade: 5, semester: 2 },
  { student_id: 5, discipline_id: 5, teacher_id: 1, grade: 4, semester: 3 },
  { student_id: 6, discipline_id: 6, teacher_id: 1, grade: 5, semester: 1 },
  { student_id: 7, discipline_id: 7, teacher_id: 1, grade: 3, semester: 2 },
  { student_id: 8, discipline_id: 8, teacher_id: 1, grade: 4, semester: 3 },
  { student_id: 9, discipline_id: 9, teacher_id: 1, grade: 5, semester: 1 },
  { student_id: 10, discipline_id: 10, teacher_id: 1, grade: 4, semester: 2 }
]

class_types = [
  { name: 'Лекция' },
  { name: 'Лабораторная' },
  { name: 'Семинар' },
  { name: 'Практическое занятие' }
]

control_forms = [
  { name: 'Экзамен' },
  { name: 'Зачет' },
  { name: 'Дифференцированный зачет' }
]

curriculums = [
  { discipline_id: 1, group_id: 1, semester: 1, hours: 72, class_type_id: 1, control_form_id: 1 },
  { discipline_id: 2, group_id: 1, semester: 1, hours: 48, class_type_id: 2, control_form_id: 1 },
  { discipline_id: 3, group_id: 2, semester: 2, hours: 72, class_type_id: 1, control_form_id: 2 },
  { discipline_id: 4, group_id: 2, semester: 2, hours: 48, class_type_id: 2, control_form_id: 1 },
  { discipline_id: 5, group_id: 3, semester: 3, hours: 72, class_type_id: 1, control_form_id: 1 },
  { discipline_id: 6, group_id: 3, semester: 3, hours: 48, class_type_id: 1, control_form_id: 3 },
  { discipline_id: 7, group_id: 4, semester: 1, hours: 72, class_type_id: 1, control_form_id: 1 },
  { discipline_id: 8, group_id: 4, semester: 1, hours: 48, class_type_id: 1, control_form_id: 2 },
  { discipline_id: 9, group_id: 5, semester: 2, hours: 72, class_type_id: 1, control_form_id: 1 },
  { discipline_id: 10, group_id: 5, semester: 2, hours: 48, class_type_id: 1, control_form_id: 3 }
]

# Faculty.create!(faculties)
# Department.create!(departments)
# Group.create!(groups)
# Student.create!(students)
# Discipline.create!(disciplines)
# Teacher.create!(teachers)
# Thesis.create!(theses)
# Topic.create!(topics)
# Exam.create!(exams)
# ClassType.create!(class_types)
# ControlForm.create!(control_forms)
Curriculum.create!(curriculums)