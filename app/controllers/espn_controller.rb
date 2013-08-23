require 'net/http'
require 'json'

class EspnController < ApplicationController
	def index
	end

	def athletes
		if params[:athlete_id]
			@data = Net::HTTP.get(URI.parse("http://api.espn.com/v1/sports/#{params[:sport]}/#{params["league"]}/athletes/#{params[:athlete_id]}?apikey=zcuvb9y2rb7hjzqmfd7fgbsn"))
		else
			@data = Net::HTTP.get(URI.parse("http://api.espn.com/v1/sports/#{params[:sport]}/#{params["league"]}/athletes?apikey=zcuvb9y2rb7hjzqmfd7fgbsn"))
		end
		
		@data_in_json = parsed_json = ActiveSupport::JSON.decode(@data)
	end

	def news
		@data = Net::HTTP.get(URI.parse("http://api.espn.com/v1/sports/#{params[:sport]}/#{params["league"]}/athletes/#{params[:athlete_id]}/news?apikey=zcuvb9y2rb7hjzqmfd7fgbsn"))
		@data_in_json = parsed_json = ActiveSupport::JSON.decode(@data)
	end

end
