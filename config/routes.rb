Rails.application.routes.draw do

	#HOME ROUTES
  	root "home#index"
  	get "home/index"
  	post "home/index"

	#COURT ROUTES
	resources :court

	#CLUB ROUTES
	resources :club

	#USER ROUTES
	resources :user
	get "/register", to: "session#register"
	post "/register", to: "session#register"

	#ABONNEMENT ROUTES
	resources :abonnement

	#BOOKING ROUTES
	resources :booking

	#SESSION ROUTES
	resources :session
	post "login", to: "session#create", :as => "login"
	get "logout", to: "session#destroy", :as => "logout"
	get "change_password", to: "session#change_password", :as => "change_password"
	post "change_password", to: "session#change_password"
	get "forgot_password", to: "session#forgot_password", :as => "forgot_password"
	post "forgot_password", to: "session#forgot_password"

end
