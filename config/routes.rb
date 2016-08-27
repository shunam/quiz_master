Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Ckeditor::Engine => '/ckeditor'
  root 'quiz_master#index'
  post 'quiz_master/answer'
  resources :questions
end
