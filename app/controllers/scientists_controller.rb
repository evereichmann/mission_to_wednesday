class ScientistsController < ApplicationController
    #index
    def index
        @scientists = Scientist.all
    end    
    #show
    def show
        @scientist = Scientist.find(params[:id])  
    end    
    #new
    def new
        @scientists = Scientist.all
        @scientist = Scientist.new
    end    
    #create
    def create
        @scientist = Scientist.create(scientist_params)
        redirect_to scientist_path(@scientist)
    end    
    #edit
    def edit
        @scientists = Scientist.all
        @scientist = Scientist.find(params[:id])
    end    
    #update
    def update 
        @scientist = Scientist.find(params[:id])
        @scientist.update(scientist_params)
        redirect_to scientist_path(@scientist)
    end    
    #delete
    def destroy
        @scientist = Scientist.find(params[:id])
        @scientist.destroy
        redirect_to scientists_path
    end    
    ##private
    #scientist_params
    private

    def scientist_params
        params.require(:scientist).permit(:name, :age, :job)
    end    
end
