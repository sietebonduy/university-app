Rails.application.routes.draw do
  root to: "pages#homepage"
  get '/pages/maintainer_info' => "pages#maintainer_info"

  resources :theses
  resources :topics
  resources :exams
  resources :curriculums
  resources :disciplines
  resources :teachers
  resources :groups
  resources :students
  resources :departments
  resources :faculties
end
