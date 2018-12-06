Rails.application.routes.draw do
   root 'pages#home'
   
   get '/auth/:provider/callback', to: 'sessions#create'
   delete '/logout', to: 'sessions#destroy'
end
