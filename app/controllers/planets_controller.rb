class PlanetsController < ApplicationController
    #index
    def index
        @missions = Mission.all
    end    
    #show
    def show
        @mission = Mission.find(params[:id])  
    end    
end
