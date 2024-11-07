Rails.application.routes.draw do
  root to: 'pages#homepage'
  get '/pages/maintainer_info' => 'pages#maintainer_info'

  # Запросы
  get '/queries' => 'queries#index'
  get '/queries/students' => 'queries#students'
  get '/queries/teachers' => 'queries#teachers'
  get '/queries/topics' => 'queries#topics'
  get '/queries/theses' => 'queries#theses'
  get '/queries/thesis_advisors' => 'queries#thesis_advisors'
  get '/queries/departments' => 'queries#departments'
  get '/queries/teacher_schedules' => 'queries#teacher_schedules'
  get '/queries/teacher_class_type_schedules' => 'queries#teacher_class_type_schedules'
  get '/queries/students_exams' => 'queries#students_exams'
  get '/queries/students_exams_grades' => 'queries#students_exams_grades'
  get '/queries/teacher_exams' => 'queries#teacher_exams'
  get '/queries/students_teachers_exams' => 'queries#students_teachers_exams'
  get '/queries/teachers_load' => 'queries#teachers_load'

  resources :theses
  resources :topics
  resources :exams
  resources :control_forms
  resources :class_types
  resources :curriculums
  resources :disciplines
  resources :teachers
  resources :groups
  resources :students
  resources :departments
  resources :faculties
  resources :schedules
end
