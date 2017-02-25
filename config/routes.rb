Rails.application.routes.draw do
	root to: 'trivia#quiz_form'
	post "/form_submit", to: 'trivia#form_submit', as: 'form_submit'
	# get "/index", to: 'trivia#index', as: 'index'
	get "/check_answer", to: 'trivia#check_answer', as: :check_answer


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
