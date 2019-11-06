Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root  'pages#home'
get '/contact_us', to: 'pages#contact_us'
get '/about_us', to: 'pages#about_us'
get '/careers', to: 'pages#careers'

end
