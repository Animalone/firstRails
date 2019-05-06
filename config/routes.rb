Rails.application.routes.draw do
  post    '/login',    to: 'login#help'
  post    '/profile',   to: 'profile#about'
end