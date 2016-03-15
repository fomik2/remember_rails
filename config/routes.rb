Rails.application.routes.draw do
  root :to => 'question#view'
  resources :question
  get 'question/create'
  get 'question/view'


end
