Rails.application.routes.draw do
  get '/home' => 'correct#home'
  post '/home' => 'correct#correct'
end
