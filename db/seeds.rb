# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


faculties = [
  { name: '', dean: ''}
]

groups = [
  { name: '', faculty_id: 0, enrollment_year: 2000 }
]

students = [
  { first_name: '', last_name: '', gender: '', birth_date: '', has_children: false, scholarship_amount: 123,  },
  {},
]

disciplines = [
  { name: '' }
]

teachers = [
  { first_name: '', last_name: '', gender: 'F', birth_date: '' has_children: false, salary: 1, category: 1, has_phd: false, has_doctorate: false, department_id: 0 },
]

theses = [
  { title: '', student_id: 0, teacher_id: 0}
]

topics = [
  { name: '', teacher_id: 0, department_id: 0 }
]

exams = [
  { student_id: 0, discipline_id: 0, grade: 0, semester: 0 }
]