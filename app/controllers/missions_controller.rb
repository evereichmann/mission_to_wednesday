class MissionsController < ApplicationController
    #index
    def index
        @missions = Mission.all
    end    
    #show
    def show
        @mission = Mission.find(params[:id])  
    end    
    #new
    def new
        @mission = Mission.new
    end    
    #create
    def create
        @mission = Mission.create(mission_params)
        redirect_to mission_path(@missions)
    end    
    #edit
    def edit
        @mission = Mission.find(params[:id])
    end    
    #update
    def update 
        @mission = Mission.find(params[:id])
        @mission.update(mission_params)
        redirect_to mission_path(@missions)
    end    
    #delete
    def destroy
        @missions = Mission.find(params[:id])
        @missions.destroy
        redirect_to mission_path
    end    
    ##private
    #mission_params
    private

    def mission_params
        params.require(:mission).permit(:name, :date, :plan)
    end    

end
