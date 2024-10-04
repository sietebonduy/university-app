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
  { name: 'Кафедра строительных конструкций', faculty_id: 1 },
  { name: 'Кафедра программного обеспечения и вычислительных систем', faculty_id: 2 },
  { name: 'Кафедра машиностроения', faculty_id: 3 },
  { name: 'Кафедра управления проектами и бизнесом', faculty_id: 4 },
  { name: 'Кафедра гражданского права', faculty_id: 5 },
  { name: 'Кафедра биомедицинской инженерии', faculty_id: 6 },
  { name: 'Кафедра электрических машин и аппаратов', faculty_id: 7 },
  { name: 'Кафедра аграрных технологий и экологии', faculty_id: 8 },
  { name: 'Кафедра транспортных систем', faculty_id: 9 },
  { name: 'Кафедра информационной безопасности в вычислительных системах и сетях', faculty_id: 2 },
  { name: 'Кафедра информационные технологии', faculty_id: 2 },
  { name: 'Кафедра прикладная математика', faculty_id: 2 }
]


groups = [
  { name: 'АС-101', faculty_id: 1, enrollment_year: 2021 },
  { name: 'ИТ-201', faculty_id: 2, enrollment_year: 2022 },
  { name: 'ИТ-202', faculty_id: 2, enrollment_year: 2022 },
  { name: 'ИТ-203', faculty_id: 2, enrollment_year: 2022 },
  { name: 'ИТ-204', faculty_id: 2, enrollment_year: 2022 },
  { name: 'ИТ-205', faculty_id: 2, enrollment_year: 2022 },
  { name: 'ИТ-206', faculty_id: 2, enrollment_year: 2022 },
  { name: 'МР-303', faculty_id: 3, enrollment_year: 2021 },
  { name: 'ЭУ-104', faculty_id: 4, enrollment_year: 2020 },
  { name: 'ПМ-105', faculty_id: 5, enrollment_year: 2022 },
  { name: 'БМ-106', faculty_id: 6, enrollment_year: 2023 },
  { name: 'ЭС-107', faculty_id: 7, enrollment_year: 2021 },
  { name: 'АП-208', faculty_id: 8, enrollment_year: 2020 },
  { name: 'ТС-109', faculty_id: 9, enrollment_year: 2021 },
]

students = [
  { first_name: 'Алексей', last_name: 'Иванов', gender: 'М', birth_date: '2003-05-15', has_children: false, scholarship_amount: 15000, group_id: 1 },
  { first_name: 'Мария', last_name: 'Петрова', gender: 'Ж', birth_date: '2004-08-22', has_children: false, scholarship_amount: 13000, group_id: 2 },
  { first_name: 'Дмитрий', last_name: 'Сидоров', gender: 'М', birth_date: '2002-11-30', has_children: true, scholarship_amount: 17000, group_id: 3 },
  { first_name: 'Екатерина', last_name: 'Алексеева', gender: 'Ж', birth_date: '2003-01-19', has_children: false, scholarship_amount: 14000, group_id: 4 },
  { first_name: 'Олег', last_name: 'Кузнецов', gender: 'М', birth_date: '2004-03-25', has_children: false, scholarship_amount: 12000, group_id: 5 },
  { first_name: 'Ольга', last_name: 'Васильева', gender: 'Ж', birth_date: '2002-09-17', has_children: true, scholarship_amount: 16000, group_id: 6 },
  { first_name: 'Михаил', last_name: 'Михайлов', gender: 'М', birth_date: '2003-06-05', has_children: false, scholarship_amount: 15000, group_id: 7 },
  { first_name: 'Антон', last_name: 'Григорьев', gender: 'М', birth_date: '2001-12-11', has_children: true, scholarship_amount: 17000, group_id: 8 },
  { first_name: 'Наталья', last_name: 'Романова', gender: 'Ж', birth_date: '2003-02-28', has_children: false, scholarship_amount: 14000, group_id: 9 },
  { first_name: 'Светлана', last_name: 'Федорова', gender: 'Ж', birth_date: '2004-07-14', has_children: false, scholarship_amount: 13000, group_id: 10 }
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
  { first_name: 'Алексей', last_name: 'Петров', gender: 'М', birth_date: '1980-02-15', has_children: true, salary: 80000, category: 1, has_phd: true, has_doctorate: false, department_id: 1 },
  { first_name: 'Мария', last_name: 'Иванова', gender: 'Ж', birth_date: '1985-04-22', has_children: false, salary: 85000, category: 2, has_phd: true, has_doctorate: true, department_id: 2 },
  { first_name: 'Дмитрий', last_name: 'Сидоров', gender: 'М', birth_date: '1978-08-12', has_children: true, salary: 90000, category: 3, has_phd: false, has_doctorate: true, department_id: 3 },
  { first_name: 'Екатерина', last_name: 'Алексеева', gender: 'Ж', birth_date: '1990-05-19', has_children: true, salary: 75000, category: 1, has_phd: true, has_doctorate: false, department_id: 4 },
]

theses = [
  { title: 'Разработка жилого комплекса в условиях плотной застройки', student_id: 1, teacher_id: 1 },
  { title: 'Алгоритмы машинного обучения для обработки больших данных', student_id: 2, teacher_id: 2 },
  { title: 'Проектирование роботизированной линии сборки', student_id: 3, teacher_id: 3 },
  { title: 'Разработка бизнес-плана для стартапа в сфере IT', student_id: 4, teacher_id: 4 },
  { title: 'Правовые аспекты защиты интеллектуальной собственности', student_id: 5, teacher_id: 1 },
  { title: 'Разработка биомедицинского устройства для мониторинга здоровья', student_id: 6, teacher_id: 2 },
  { title: 'Энергоэффективные системы электроснабжения', student_id: 7, teacher_id: 3 },
  { title: 'Современные аграрные технологии в сельском хозяйстве', student_id: 8, teacher_id: 4 },
  { title: 'Проектирование транспортных сетей для умных городов', student_id: 9, teacher_id: 1 },
  { title: 'Социологический анализ влияния цифровизации на общество', student_id: 10, teacher_id: 2 }
]

topics = [
  { name: 'Современные методы проектирования жилых комплексов', teacher_id: 1, department_id: 1 },
  { name: 'Машинное обучение в анализе больших данных', teacher_id: 2, department_id: 2 },
  { name: 'Роботизация производственных процессов', teacher_id: 3, department_id: 3 },
  { name: 'Управление проектами в условиях неопределенности', teacher_id: 4, department_id: 4 },
  { name: 'Правовые аспекты международного права', teacher_id: 1, department_id: 5 },
  { name: 'Инновации в биомедицинской инженерии', teacher_id: 2, department_id: 6 },
  { name: 'Энергоэффективные технологии в электротехнике', teacher_id: 3, department_id: 7 },
  { name: 'Современные агротехнологии для устойчивого сельского хозяйства', teacher_id: 4, department_id: 8 },
  { name: 'Умные транспортные системы для городов будущего', teacher_id: 1, department_id: 9 },
  { name: 'Влияние цифровизации на социальные процессы', teacher_id: 2, department_id: 10 }
]

exams = [
  { student_id: 1, discipline_id: 1, grade: 5, semester: 1 },
  { student_id: 2, discipline_id: 2, grade: 4, semester: 1 },
  { student_id: 3, discipline_id: 3, grade: 3, semester: 2 },
  { student_id: 4, discipline_id: 4, grade: 5, semester: 2 },
  { student_id: 5, discipline_id: 5, grade: 4, semester: 3 },
  { student_id: 6, discipline_id: 6, grade: 5, semester: 1 },
  { student_id: 7, discipline_id: 7, grade: 3, semester: 2 },
  { student_id: 8, discipline_id: 8, grade: 4, semester: 3 },
  { student_id: 9, discipline_id: 9, grade: 5, semester: 1 },
  { student_id: 10, discipline_id: 10, grade: 4, semester: 2 }
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

Faculty.create!(faculties)
Department.create!(departments)
Group.create!(groups)
Student.create!(students)
Discipline.create!(disciplines)
Teacher.create!(teachers)
Thesis.create!(theses)
Topic.create!(topics)
Exam.create!(exams)
ClassType.create!(class_types)
ControlForm.create!(control_forms)
Curriculum.create!(curriculums)