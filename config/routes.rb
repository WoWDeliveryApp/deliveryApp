Rails.application.routes.draw do
  root to: 'visitors#index'
  post '/locale' => 'visitors#set_locale', as: 'locale'

  devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions', passwords: 'passwords' }
end
