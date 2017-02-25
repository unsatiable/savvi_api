class TriviaController < ApplicationController

	def index
		@response = Hashie::Mash.new( JSON.parse(get_api_data.body))
	end

	def get_api_data 
		Faraday.get 'https://opentdb.com/api.php?amount=10'
	end
end
