Rails.application.routes.draw do
  root to: "pages#homepage"

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
