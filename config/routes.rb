Rails.application.routes.draw do
  resources :note_topics
  resources :people
  resources :sizes
  resources :topics
  resources :notes
  
  root "people#index"
  get '/login', to: "sessions#new", as:"login"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  # delete '/people/delete' to: "people#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

#<%=sip.map do |obj|%>
  #<%=obj.description%>
  #<%end%>
