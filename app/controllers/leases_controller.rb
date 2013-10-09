class LeasesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_lease, only: [:show, :edit, :update, :destroy]

  # GET /leases
  # GET /leases.json
  def index
    @leases = Lease.all
  end

  # GET /leases/1
  # GET /leases/1.json
  def show
  end

  # GET /leases/new
  def new
    @lease = current_user.leases.new
  end

  # GET /leases/1/edit
  def edit
    @lease = current_user.leases.find(params[:id])
  end

  # POST /leases
  # POST /leases.json
  def create
    @lease = current_user.leases.new(lease_params)

    respond_to do |format|
      if @lease.save
        format.html { redirect_to @lease, notice: 'Lease was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lease }
      else
        format.html { render action: 'new' }
        format.json { render json: @lease.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leases/1
  # PATCH/PUT /leases/1.json
  def update
    @lease = current_user.leases.find(params[:id])
    respond_to do |format|
      if @lease.update(lease_params)
        format.html { redirect_to @lease, notice: 'Lease was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lease.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leases/1
  # DELETE /leases/1.json
  def destroy
    @lease = current_user.leases.find(params[:id])
    @lease.destroy
    respond_to do |format|
      format.html { redirect_to leases_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lease
      @lease = Lease.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lease_params
      params.require(:lease).permit(:street, :unit, :rent, :deposit, :status, :tenant1_name, :tenant1_email, :tenant1_phone, :tenant2_name, :tenant2_email, :tenant2_phone, :tenant3_name, :tenant3_email, :tenant3_phone, :tenant4_name, :tenant5_email, :tenant6_phone, :lease_started, :lease_expires, :late_payments)
    end
end
