class RepairsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_repair, only: [:show, :edit, :update, :destroy]

  # GET /repairs
  # GET /repairs.json
  def index
    if current_user.admin?
      @repairs = Repair.order(sort_column + ' ' + sort_direction).page(params[:page]).per_page(10)
    else
      @repairs = current_user.repairs.order(sort_column + ' ' + sort_direction).page(params[:page]).per_page(10)
    end
  end

  # GET /repairs/1
  # GET /repairs/1.json
  def show
  end

  # GET /repairs/new
  def new
    @repair = current_user.repairs.new
    @repair.status = 1
    @repair.repair_details = "This ticket has been submitted and will be processed in the order it was received."
  end

  # GET /repairs/1/edit
  def edit
    if current_user.admin?
      @repair = Repair.find(params[:id])
    else
      @repair = current_user.repairs.find(params[:id])
    end
  end

  # POST /repairs
  # POST /repairs.json
  def create
    @repair = current_user.repairs.new(repair_params)
    @repair.status = 1
    @repair.repair_details = "This ticket has been submitted and will be processed in the order it was received."

    respond_to do |format|
      if @repair.save
        RepairsMailer.registration_confirmation(@repair).deliver
        format.html { redirect_to @repair, notice: 'Repair was successfully created.' }
        format.json { render action: 'show', status: :created, location: @repair }
      else
        format.html { render action: 'new' }
        format.json { render json: @repair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repairs/1
  # PATCH/PUT /repairs/1.json
  def update
    respond_to do |format|
      if @repair.update(repair_params)
        RepairsMailer.update_confirmation(@repair).deliver
        format.html { redirect_to @repair, notice: 'Repair was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @repair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repairs/1
  # DELETE /repairs/1.json
  def destroy
    @repair.destroy
    respond_to do |format|
      format.html { redirect_to repairs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repair
      @repair = Repair.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repair_params
      params.require(:repair).permit(:description, :location_address, :phn, :repair_details, :status)
    end

    def sort_column
      params[:sort] || "id"
    end
    
    def sort_direction
      params[:direction] || "desc"
    end
end
