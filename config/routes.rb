Rails.application.routes.draw do
  post    '/login',    to: 'login#log'
  post    '/profile',   to: 'profile#register'
  post    '/profile/update',   to: 'profile#update'
end