class ApartmentsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  before_action :set_apartment, only: [:show, :edit, :update, :destroy]

  # GET /apartments
  # GET /apartments.json
  def index
    @apartments = Apartment.all
  end

  # GET /apartments/1
  # GET /apartments/1.json
  def show
  end

  # GET /apartments/new
  def new
    @apartment = current_user.apartments.new
  end

  # GET /apartments/1/edit
  def edit
    @apartment = current_user.apartments.find(params[:id])
  end

  # POST /apartments
  # POST /apartments.json
  def create
    @apartment = current_user.apartments.new(apartment_params)

    respond_to do |format|
      if @apartment.save
        format.html { redirect_to @apartment, notice: 'Apartment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @apartment }
      else
        format.html { render action: 'new' }
        format.json { render json: @apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartments/1
  # PATCH/PUT /apartments/1.json
  def update
    respond_to do |format|
      if @apartment.update(apartment_params)
        format.html { redirect_to @apartment, notice: 'Apartment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartments/1
  # DELETE /apartments/1.json
  def destroy
    @apartment = current_user.apartments.find(params[:id])
    @apartment.destroy
    respond_to do |format|
      format.html { redirect_to apartments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartment
      @apartment = Apartment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apartment_params
      params.require(:apartment).permit(:streetAddress, :image, :image2, :image3, :image4, :image5, :image6, :image7, :aptNumber, :rent, :isAvailable, :description, :sqFootage, :beds, :baths, :parking, :stove, :washer, :drier, :refrigerator, :microwave, :dishwasher, :laundryOnSite, :hardwoodFloors, :pets, :gasHeater, :balcony, :airConditioning, :fireplace, :patio, :util_gas, :util_water, :util_electric, :util_maid, :util_trash, :util_gardener)
    end



end
