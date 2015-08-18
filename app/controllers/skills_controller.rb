class SkillsController < ApplicationController
  before_action :find_skill, only: [:edit, :update, :destroy]

  def index
    @skills = Skill.all
  end

  def show
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
      if @skill.save
        redirect_to skills_path
      else
        render :new
      end
  end

  def edit
  end

  def update
    if @skill.save
      redirect_to skills_path
    else
      render :edit
    end
  end

  def destroy
    @skill.destroy
    redirect_to skills_path, :notice => "Deleted #{@skill.name}"
  end
end


private

  def find_skill
    @skill = Skill.find(params[:id])
  end

  def skill_params
    params.require(:skill).permit(:name)
  end
