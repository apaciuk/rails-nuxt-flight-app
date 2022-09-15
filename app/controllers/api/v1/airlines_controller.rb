class Api::V1::AirlinesController < ApplicationController 

    def index 
        airlines = Airline.all
        render json: AirlineSerializer.new(airlines).serialized_json
    end
end
