require 'open-uri'
require 'json'

class EducationsController < ApplicationController
  before_action :set_education, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:new, :create, :update, :edit, :destroy]

  # GET /educations
  # GET /educations.json
  def index
    @icons = ["code", "anchor", "adjust"]
    @educations = Education.all

    cs_url = "https://www.codeschool.com/users/1733393.json"
    open_url = open(cs_url).read
    json_data = JSON.parse(open_url)
    @cs_badges = json_data['courses']['completed']
    @cs_info = json_data['user']

    tth_url = "https://teamtreehouse.com/traviseubanks.json"
    open_url = open(tth_url).read
    json_data = JSON.parse(open_url)
    @tth_badges = json_data['badges']
    @tth_points = json_data['points']
    @tth_courses = @tth_badges[5]
  end

  # GET /educations/1
  # GET /educations/1.json
  def show
  end

  # GET /educations/new
  def new
    @education = Education.new
  end

  # GET /educations/1/edit
  def edit
  end

  # POST /educations
  # POST /educations.json
  def create
    @education = Education.new(education_params)

    respond_to do |format|
      if @education.save
        format.html { redirect_to @education, notice: 'Education was successfully created.' }
        format.json { render :show, status: :created, location: @education }
      else
        format.html { render :new }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /educations/1
  # PATCH/PUT /educations/1.json
  def update
    respond_to do |format|
      if @education.update(education_params)
        format.html { redirect_to @education, notice: 'Education was successfully updated.' }
        format.json { render :show, status: :ok, location: @education }
      else
        format.html { render :edit }
        format.json { render json: @education.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /educations/1
  # DELETE /educations/1.json
  def destroy
    @education.destroy
    respond_to do |format|
      format.html { redirect_to educations_url, notice: 'Education was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education
      @education = Education.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def education_params
      params.require(:education).permit(:school_name, :course_program, :description, :duration, :location)
    end
end
