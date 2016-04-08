Rails.application.routes.draw do
 
  devise_for :views
  resources :results
  resources :responses
  resources :survey_questions
  resources :surveys
  resources :consumers

  get '/', to: 'intro#info'
  devise_for :consumers

end
