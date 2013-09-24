class AppliesController < ApplicationController
  before_action :set_apply, only: [:show, :update, :destroy]

  # GET /applies
  # GET /applies.json
  def index
    @applies = Apply.all
  end

  # GET /applies/1
  # GET /applies/1.json
  def show
  end

  # GET /applies/new
  def new
    @apply = Apply.new
  end

  # GET /applies/1/edit
  def edit
  end

  # POST /applies
  # POST /applies.json
  def create
    @apply = Apply.new(apply_params)

    respond_to do |format|
      if @apply.save
        ApplyMailer.registration_confirmation(@apply).deliver
        format.html { redirect_to @apply, notice: 'Success!' }
        format.json { render action: 'show', status: :created, location: @apply }
      else
        format.html { render action: 'new' }
        format.json { render json: @apply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applies/1
  # PATCH/PUT /applies/1.json
  def update
    respond_to do |format|
      if @apply.update(apply_params)
        format.html { redirect_to @apply, notice: 'Apply was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @apply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applies/1
  # DELETE /applies/1.json
  def destroy
    @apply.destroy
    respond_to do |format|
      format.html { redirect_to applies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apply
      @apply = Apply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apply_params
      params.require(:apply).permit(:aptaddress, :name, :email, :phone, :dob, :ssn, :license, :licensestate, :current_address, :current_unit, :current_city, :current_state, :current_zip, :current_start_date, :current_end_date, :current_total_date, :current_rent, :current_manager, :current_manager_phone, :current_reason, :previous_address, :previous_unit, :previous_city, :previous_state, :previous_zip, :previous_start_date, :previous_end_date, :previous_total_date, :previous_rent, :previous_manager, :previous_manager_phone, :previous_reason, :employer, :employer_address, :employer_city, :employer_state, :employer_zip, :employer_start_date, :employer_total_date, :employer_salary, :employer_title, :employer_supervisor, :employer_supervisor_title, :employer_supervisor_phone, :emergency_contact, :emergency_relationship, :emergency_phone, :vehicle_make, :vehicle_model, :vehicle_color, :vehicle_year, :vehicle_license, :message, :acknowledgment)
    end
end
