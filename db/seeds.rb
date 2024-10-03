# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

faculties = [
  { name: 'Факультет архитектуры и строительства', dean: 'Иванов Иван Иванович' },
  { name: 'Факультет информационных технологий и программирования', dean: 'Петров Петр Петрович' },
  { name: 'Факультет машиностроения и робототехники', dean: 'Сидоров Сергей Александрович' },
  { name: 'Факультет экономики и управления', dean: 'Алексеева Елена Владимировна' },
  { name: 'Факультет права и международных отношений', dean: 'Кузнецов Олег Викторович' },
  { name: 'Факультет биомедицинских технологий и химической инженерии', dean: 'Васильева Ольга Дмитриевна' },
  { name: 'Факультет электротехнических систем и энергетики', dean: 'Михайлов Михаил Сергеевич' },
  { name: 'Факультет агропромышленного и экологического инженерного образования', dean: 'Григорьев Антон Павлович' },
  { name: 'Факультет транспортных систем', dean: 'Романов Дмитрий Валерьевич' }
]

departments = [
  { name: 'Кафедра строительных конструкций', faculty_id: 1 },  # Факультет архитектуры и строительства
  { name: 'Кафедра программного обеспечения и вычислительных систем', faculty_id: 2 },  # Факультет информационных технологий и программирования
  { name: 'Кафедра машиностроения', faculty_id: 3 },  # Факультет машиностроения и робототехники
  { name: 'Кафедра управления проектами и бизнесом', faculty_id: 4 },  # Факультет экономики и управления
  { name: 'Кафедра гражданского права', faculty_id: 5 },  # Факультет права и международных отношений
  { name: 'Кафедра биомедицинской инженерии', faculty_id: 6 },  # Факультет биомедицинских технологий и химической инженерии
  { name: 'Кафедра электрических машин и аппаратов', faculty_id: 7 },  # Факультет электротехнических систем и энергетики
  { name: 'Кафедра аграрных технологий и экологии', faculty_id: 8 },  # Факультет агропромышленного и экологического инженерного образования
  { name: 'Кафедра транспортных систем', faculty_id: 9 },  # Факультет транспортных систем
  { name: 'Кафедра философии и социологии', faculty_id: 10 }  # Факультет гуманитарных наук и социальных технологий
]


groups = [
  { name: 'АС-101', faculty_id: 1, enrollment_year: 2021 }, # Факультет архитектуры и строительства
  { name: 'ИТ-202', faculty_id: 2, enrollment_year: 2022 }, # Факультет информационных технологий и программирования
  { name: 'МР-303', faculty_id: 3, enrollment_year: 2021 }, # Факультет машиностроения и робототехники
  { name: 'ЭУ-104', faculty_id: 4, enrollment_year: 2020 }, # Факультет экономики и управления
  { name: 'ПМ-105', faculty_id: 5, enrollment_year: 2022 }, # Факультет права и международных отношений
  { name: 'БМ-106', faculty_id: 6, enrollment_year: 2023 }, # Факультет биомедицинских технологий и химической инженерии
  { name: 'ЭС-107', faculty_id: 7, enrollment_year: 2021 }, # Факультет электротехнических систем и энергетики
  { name: 'АП-208', faculty_id: 8, enrollment_year: 2020 }, # Факультет агропромышленного и экологического инженерного образования
  { name: 'ТС-109', faculty_id: 9, enrollment_year: 2021 }, # Факультет транспортных систем
]

students = [
  { first_name: 'Алексей', last_name: 'Иванов', gender: 'М', birth_date: '2003-05-15', has_children: false, scholarship_amount: 15000, group_id: 1 }, # Группа АС-101
  { first_name: 'Мария', last_name: 'Петрова', gender: 'Ж', birth_date: '2004-08-22', has_children: false, scholarship_amount: 13000, group_id: 2 }, # Группа ИТ-202
  { first_name: 'Дмитрий', last_name: 'Сидоров', gender: 'М', birth_date: '2002-11-30', has_children: true, scholarship_amount: 17000, group_id: 3 }, # Группа МР-303
  { first_name: 'Екатерина', last_name: 'Алексеева', gender: 'Ж', birth_date: '2003-01-19', has_children: false, scholarship_amount: 14000, group_id: 4 }, # Группа ЭУ-104
  { first_name: 'Олег', last_name: 'Кузнецов', gender: 'М', birth_date: '2004-03-25', has_children: false, scholarship_amount: 12000, group_id: 5 }, # Группа ПМ-105
  { first_name: 'Ольга', last_name: 'Васильева', gender: 'Ж', birth_date: '2002-09-17', has_children: true, scholarship_amount: 16000, group_id: 6 }, # Группа БМ-106
  { first_name: 'Михаил', last_name: 'Михайлов', gender: 'М', birth_date: '2003-06-05', has_children: false, scholarship_amount: 15000, group_id: 7 }, # Группа ЭС-107
  { first_name: 'Антон', last_name: 'Григорьев', gender: 'М', birth_date: '2001-12-11', has_children: true, scholarship_amount: 17000, group_id: 8 }, # Группа АП-208
  { first_name: 'Наталья', last_name: 'Романова', gender: 'Ж', birth_date: '2003-02-28', has_children: false, scholarship_amount: 14000, group_id: 9 }, # Группа ТС-109
  { first_name: 'Светлана', last_name: 'Федорова', gender: 'Ж', birth_date: '2004-07-14', has_children: false, scholarship_amount: 13000, group_id: 10 } # Группа ГН-110
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
  { name: 'Философия' }
]

teachers = [
  { first_name: 'Алексей', last_name: 'Петров', gender: 'М', birth_date: '1980-02-15', has_children: true, salary: 80000, category: 1, has_phd: true, has_doctorate: false, department_id: 1 }, # Кафедра строительных конструкций
  { first_name: 'Мария', last_name: 'Иванова', gender: 'Ж', birth_date: '1985-04-22', has_children: false, salary: 85000, category: 2, has_phd: true, has_doctorate: true, department_id: 2 }, # Кафедра программного обеспечения и вычислительных систем
  { first_name: 'Дмитрий', last_name: 'Сидоров', gender: 'М', birth_date: '1978-08-12', has_children: true, salary: 90000, category: 3, has_phd: false, has_doctorate: true, department_id: 3 }, # Кафедра машиностроения
  { first_name: 'Екатерина', last_name: 'Алексеева', gender: 'Ж', birth_date: '1990-05-19', has_children: true, salary: 75000, category: 1, has_phd: true, has_doctorate: false, department_id: 4 }, # Кафедра управления проектами и бизнесом
]

theses = [
  { title: 'Разработка жилого комплекса в условиях плотной застройки', student_id: 1, teacher_id: 1 },  # Студент Алексей Иванов, преподаватель Алексей Петров
  { title: 'Алгоритмы машинного обучения для обработки больших данных', student_id: 2, teacher_id: 2 },  # Студент Мария Петрова, преподаватель Мария Иванова
  { title: 'Проектирование роботизированной линии сборки', student_id: 3, teacher_id: 3 },  # Студент Дмитрий Сидоров, преподаватель Дмитрий Сидоров
  { title: 'Разработка бизнес-плана для стартапа в сфере IT', student_id: 4, teacher_id: 4 },  # Студент Екатерина Алексеева, преподаватель Екатерина Алексеева
  { title: 'Правовые аспекты защиты интеллектуальной собственности', student_id: 5, teacher_id: 5 },  # Студент Олег Кузнецов, преподаватель Олег Кузнецов
  { title: 'Разработка биомедицинского устройства для мониторинга здоровья', student_id: 6, teacher_id: 6 },  # Студент Ольга Васильева, преподаватель Ольга Васильева
  { title: 'Энергоэффективные системы электроснабжения', student_id: 7, teacher_id: 7 },  # Студент Михаил Михайлов, преподаватель Михаил Михайлов
  { title: 'Современные аграрные технологии в сельском хозяйстве', student_id: 8, teacher_id: 8 },  # Студент Антон Григорьев, преподаватель Антон Григорьев
  { title: 'Проектирование транспортных сетей для умных городов', student_id: 9, teacher_id: 9 },  # Студент Наталья Романова, преподаватель Наталья Романова
  { title: 'Социологический анализ влияния цифровизации на общество', student_id: 10, teacher_id: 10 }  # Студент Светлана Федорова, преподаватель Светлана Федорова
]

topics = [
  { name: 'Современные методы проектирования жилых комплексов', teacher_id: 1, department_id: 1 },  # Преподаватель Алексей Петров, Кафедра строительных конструкций
  { name: 'Машинное обучение в анализе больших данных', teacher_id: 2, department_id: 2 },  # Преподаватель Мария Иванова, Кафедра программного обеспечения и вычислительных систем
  { name: 'Роботизация производственных процессов', teacher_id: 3, department_id: 3 },  # Преподаватель Дмитрий Сидоров, Кафедра машиностроения
  { name: 'Управление проектами в условиях неопределенности', teacher_id: 4, department_id: 4 },  # Преподаватель Екатерина Алексеева, Кафедра управления проектами и бизнесом
  { name: 'Правовые аспекты международного права', teacher_id: 5, department_id: 5 },  # Преподаватель Олег Кузнецов, Кафедра гражданского права
  { name: 'Инновации в биомедицинской инженерии', teacher_id: 6, department_id: 6 },  # Преподаватель Ольга Васильева, Кафедра биомедицинской инженерии
  { name: 'Энергоэффективные технологии в электротехнике', teacher_id: 7, department_id: 7 },  # Преподаватель Михаил Михайлов, Кафедра электрических машин и аппаратов
  { name: 'Современные агротехнологии для устойчивого сельского хозяйства', teacher_id: 8, department_id: 8 },  # Преподаватель Антон Григорьев, Кафедра аграрных технологий и экологии
  { name: 'Умные транспортные системы для городов будущего', teacher_id: 9, department_id: 9 },  # Преподаватель Дмитрий Романов, Кафедра транспортных систем
  { name: 'Влияние цифровизации на социальные процессы', teacher_id: 10, department_id: 10 }  # Преподаватель Светлана Федорова, Кафедра философии и социологии
]

exams = [
  { student_id: 1, discipline_id: 1, grade: 5, semester: 1 },  # Студент Алексей Иванов, Дисциплина Математика
  { student_id: 2, discipline_id: 2, grade: 4, semester: 1 },  # Студент Мария Петрова, Дисциплина Физика
  { student_id: 3, discipline_id: 3, grade: 3, semester: 2 },  # Студент Дмитрий Сидоров, Дисциплина Информатика
  { student_id: 4, discipline_id: 4, grade: 5, semester: 2 },  # Студент Екатерина Алексеева, Дисциплина Экономика
  { student_id: 5, discipline_id: 5, grade: 4, semester: 3 },  # Студент Олег Кузнецов, Дисциплина Правоведение
  { student_id: 6, discipline_id: 6, grade: 5, semester: 1 },  # Студент Ольга Васильева, Дисциплина Химия
  { student_id: 7, discipline_id: 7, grade: 3, semester: 2 },  # Студент Михаил Михайлов, Дисциплина Теоретическая механика
  { student_id: 8, discipline_id: 8, grade: 4, semester: 3 },  # Студент Антон Григорьев, Дисциплина Электротехника
  { student_id: 9, discipline_id: 9, grade: 5, semester: 1 },  # Студент Наталья Романова, Дисциплина История
  { student_id: 10, discipline_id: 10, grade: 4, semester: 2 }  # Студент Светлана Федорова, Дисциплина Философия
]

curriculums = [
  { discipline_id: 1, group_id: 1, semester: 1, hours: 72, class_type: 'Лекция', control_form: 'Экзамен' },  # Дисциплина Математика, Группа АС-101
  { discipline_id: 2, group_id: 1, semester: 1, hours: 48, class_type: 'Лабораторная', control_form: 'Зачет' },  # Дисциплина Физика, Группа АС-101
  { discipline_id: 3, group_id: 2, semester: 2, hours: 72, class_type: 'Лекция', control_form: 'Экзамен' },  # Дисциплина Информатика, Группа ИТ-202
  { discipline_id: 4, group_id: 2, semester: 2, hours: 48, class_type: 'Лабораторная', control_form: 'Зачет' },  # Дисциплина Экономика, Группа ИТ-202
  { discipline_id: 5, group_id: 3, semester: 3, hours: 72, class_type: 'Лекция', control_form: 'Экзамен' },  # Дисциплина Правоведение, Группа МР-303
  { discipline_id: 6, group_id: 3, semester: 3, hours: 48, class_type: 'Лабораторная', control_form: 'Зачет' },  # Дисциплина Химия, Группа МР-303
  { discipline_id: 7, group_id: 4, semester: 1, hours: 72, class_type: 'Лекция', control_form: 'Экзамен' },  # Дисциплина Теоретическая механика, Группа ЭУ-104
  { discipline_id: 8, group_id: 4, semester: 1, hours: 48, class_type: 'Лабораторная', control_form: 'Зачет' },  # Дисциплина Электротехника, Группа ЭУ-104
  { discipline_id: 9, group_id: 5, semester: 2, hours: 72, class_type: 'Лекция', control_form: 'Экзамен' },  # Дисциплина История, Группа ПМ-105
  { discipline_id: 10, group_id: 5, semester: 2, hours: 48, class_type: 'Лабораторная', control_form: 'Зачет' }  # Дисциплина Философия, Группа ПМ-105
]

Faculty.create!(faculties)
Group.create!(groups)
Student.create!(students)