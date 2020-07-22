class PlanetsController < ApplicationController
    #index
    def index
        @planets = Planet.all
    end    
    #show
    def show
        @planet = Planet.find(params[:id])  
    end    
end
