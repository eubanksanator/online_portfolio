class TechnologiesController < ApplicationController
   before_action :set_technology, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_admin!, only: [:new, :create, :update, :edit, :destroy]

   def index
      @techs = Technology.all
   end

   def edit
   end
   def new
      @tech = Technology.new
   end

   def update
      if @tech.update(technology_params)
         redirect_to technologies_path, {notice: "#{@tech.name} updated"}
      end
   end

   def create
      @tech = Technology.new(technology_params)
      if @tech.save
         redirect_to technologies_path, { notice: "Technology created."}
      else
         render 'new'
      end
   end

   def destroy
      @tech.destroy
      redirect_to technologies_path, {notice: "Technology deleted"}
   end

   private

   def technology_params
      params.require(:technology).permit(:name)
   end

   def set_technology
      @tech = Technology.find(params[:id])
   end
end
