class PagesController < ApplicationController

  def index 
    render json: { status: 200, message: "Rails API Backend!" }
  end 
  
end
