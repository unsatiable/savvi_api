class TriviaController < ApplicationController

	def index
		
	end

	def quiz_form

	end

	def get_api_data(params)
		Faraday.get url(params)
	end

	def url(params)
		url = 'https://opentdb.com/api.php?amount=' + params[:number]
		url += "&difficulty=#{params[:difficulty]}"
		url += "&category=#{params[:category]}"

	end

	def form_submit

		@response = Hashie::Mash.new( JSON.parse(get_api_data(params).body))
		
		
		
	end
end
