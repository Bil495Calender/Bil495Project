Rails.application.routes.draw do
  resources :app_appointments
  get 'web_app/Calender'
	
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
