Rails.application.routes.draw do
  post    '/login',    to: 'login#log'
  post    '/profile',   to: 'profile#register'
end