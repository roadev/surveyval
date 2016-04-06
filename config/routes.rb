Rails.application.routes.draw do
 
  resources :results
  resources :responses
  resources :survey_questions
  resources :surveys
  resources :consumers

  get '/', to: 'intro#info'

end
