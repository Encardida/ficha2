class AvailabilitiesController < ApplicationController
  before_action :bar_define
  before_action :set_preference, only: [:change_preference, :select_preference]
  before_action :set_availability, only: [:show, :edit, :update, :destroy,
                :add_unavailability, :add_availability_comments, :add_general_comments,
                :add_phone, :change_phone, :open_unavailability, :open_availability_comments,
                :open_general_comments, :select_preference, :add_preference, :change_preference,
                :change_researcher, :change_comments, :change_general_comments, :is_researcher]


  def index
    @availabilities = Availability.all
  end

  def show
  end

  def new
    @availability = Availability.new
  end

  def edit
  end

  def create
    @availability = Availability.new(availability_params)

    respond_to do |format|
      if @availability.save
        format.html { redirect_to @availability, notice: 'Availability was successfully created.' }
        format.json { render :show, status: :created, location: @availability }
      else
        format.html { render :new }
        format.json { render json: @availability.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @availability.update(availability_params)
        format.js
        format.html { redirect_to availabilities_path, notice: 'Availability was successfully updated.' }
      else
        format.js
        format.html { render :edit }
      end
    end
  end

  def destroy
    @availability.destroy
    respond_to do |format|
      format.html { redirect_to availabilities_url, notice: 'Availability was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def user_availability
    @availability = Availability.where(user_id: current_user.id, semester_id: Semester.current_semester.id).first
    if @availability.blank?
      @availability = Availability.new(user_id: current_user.id, semester_id: Semester.current_semester.id)
      @availability.save
    end

  end

  def open_unavailability
    @unavailability = Unavailability.new()
    respond_to do |format|
      format.js
    end
  end

  def open_availability_comments
    respond_to do |format|
      format.js
    end
  end

  def open_general_comments
    respond_to do |format|
      format.js
    end
  end

  def add_availability_comments

    comments = params[:comments]
    @availability.comments = comments
    @availability.save

    respond_to do |format|
      format.js
    end
  end

  def add_general_comments

    general_comments = params[:general_comments]
    @availability.general_comments = general_comments
    @availability.save

    respond_to do |format|
      format.js
    end
  end

  def add_phone
    @availability = params[:id]
    
    phone = params[:phone]
    current_user.phone = phone
    current_user.save
    respond_to do |format|
      format.js
    end
  end

  def change_phone
    respond_to do |format|
      format.js
    end
  end

  def add_unavailability
    respond_to do |format|
      format.js
      format.html { redirect_to root, notice: 'Restrição adicionada com sucesso.' }
    end
  end

  def select_preference
    respond_to do |format|
      format.js
    end
  end

  def add_preference
    preference_id = Integer(params[:preference])
    preference = Integer(params[:preference_selected])

    if preference_id == 1
      @availability.preference_first = preference
    elsif preference_id == 2
      @availability.preference_second = preference
    elsif preference_id == 3
      @availability.preference_third = preference
    end

    @availability.save

    respond_to do |format|
      format.js
    end
  end

  def change_preference
    respond_to do |format|
      format.js
    end
  end

  def change_comments
    respond_to do |format|
      format.js
    end
  end

  def change_general_comments
    respond_to do |format|
      format.js
    end
  end

  def is_researcher
    researcher = params[:researcher]
    @availability.researcher = researcher
    puts researcher
    @availability.save
    respond_to do |format|
      format.js
    end
  end

  def change_researcher
    respond_to do |format|
      format.js
    end
  end


  private

    def bar_define
      session[:page] = "options"
    end

    def set_availability
      @availability = Availability.find(params[:id])
    end

    def set_preference
      preferences = {"1" => "preference_first_div", "2" =>"preference_second_div", "3" => "preference_third_div"}
      @preference_id = params[:preference]
      @preference = preferences[@preference_id]
    end



    def availability_params
      params.require(:availability).permit(:semester_id, :user_id)
    end
end
