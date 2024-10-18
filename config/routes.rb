Rails.application.routes.draw do
  root to: 'pages#homepage'
  get '/pages/maintainer_info' => 'pages#maintainer_info'

  get '/queries' => 'queries#index'
  get '/queries/students' => 'queries#students'

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
end
