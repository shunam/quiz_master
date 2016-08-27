Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root 'questions#index'
  resources :questions

  # get 'quiz_mode/index'

  # get 'questions/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
