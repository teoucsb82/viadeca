class RollsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_roll, only: [:show, :edit, :update, :destroy]

  # GET /rolls
  # GET /rolls.json
  def index
    @rolls = Roll.all
  end

  # GET /rolls/1
  # GET /rolls/1.json
  def show
  end

  # GET /rolls/new
  def new
    @roll = current_user.rolls.new
  end

  # GET /rolls/1/edit
  def edit
    @roll = current_user.rolls.find(params[:id])
  end

  # POST /rolls
  # POST /rolls.json
  def create
    @roll = current_user.rolls.new(roll_params)

    respond_to do |format|
      if @roll.save
        format.html { redirect_to @roll, notice: 'Roll was successfully created.' }
        format.json { render action: 'show', status: :created, location: @roll }
      else
        format.html { render action: 'new' }
        format.json { render json: @roll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rolls/1
  # PATCH/PUT /rolls/1.json
  def update
    @roll = current_user.rolls.find(params[:id])
    respond_to do |format|
      if @roll.update(roll_params)
        format.html { redirect_to @roll, notice: 'Roll was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @roll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rolls/1
  # DELETE /rolls/1.json
  def destroy
    @roll = current_user.rolls.find(params[:id])
    @roll.destroy
    respond_to do |format|
      format.html { redirect_to rolls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roll
      @roll = Roll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roll_params
      params.require(:roll).permit(:rent_due_1814_1, :rent_paid_1814_1, :rent_owed_1814_1, :rent_ontime_1814_1, :rent_payment_method_1814_1, 
            :rent_due_1814_3, :rent_paid_1814_3, :rent_owed_1814_3, :rent_ontime_1814_3, :rent_payment_method_1814_3,  
            :rent_due_1814_2, :rent_paid_1814_2, :rent_owed_1814_2, :rent_ontime_1814_2, :rent_payment_method_1814_2,  
            :rent_due_1814_4, :rent_paid_1814_4, :rent_owed_1814_4, :rent_ontime_1814_4, :rent_payment_method_1814_4,  
            :rent_due_1814_5, :rent_paid_1814_5, :rent_owed_1814_5, :rent_ontime_1814_5, :rent_payment_method_1814_5,  
            :rent_due_1818_1, :rent_paid_1818_1, :rent_owed_1818_1, :rent_ontime_1818_1, :rent_payment_method_1818_1,  
            :rent_due_1818_B, :rent_paid_1818_B, :rent_owed_1818_B, :rent_ontime_1818_B, :rent_payment_method_1818_B,  
            :rent_due_1818_A, :rent_paid_1818_A, :rent_owed_1818_A, :rent_ontime_1818_A, :rent_payment_method_1818_A,  
            :rent_due_1818_C, :rent_paid_1818_C, :rent_owed_1818_C, :rent_ontime_1818_C, :rent_payment_method_1818_C,  
            :rent_due_1818_D, :rent_paid_1818_D, :rent_owed_1818_D, :rent_ontime_1818_D, :rent_payment_method_1818_D,  
            :rent_due_1241_1, :rent_paid_1241_1, :rent_owed_1241_1, :rent_ontime_1241_1, :rent_payment_method_1241_1,  
            :rent_due_1241_3, :rent_paid_1241_3, :rent_owed_1241_3, :rent_ontime_1241_3, :rent_payment_method_1241_3,  
            :rent_due_1241_2, :rent_paid_1241_2, :rent_owed_1241_2, :rent_ontime_1241_2, :rent_payment_method_1241_2,  
            :rent_due_1241_4, :rent_paid_1241_4, :rent_owed_1241_4, :rent_ontime_1241_4, :rent_payment_method_1241_4,  
            :rent_due_1241_5, :rent_paid_1241_5, :rent_owed_1241_5, :rent_ontime_1241_5, :rent_payment_method_1241_5,  
            :rent_due_1241_6, :rent_paid_1241_6, :rent_owed_1241_6, :rent_ontime_1241_6, :rent_payment_method_1241_6,  
            :rent_due_1241_7, :rent_paid_1241_7, :rent_owed_1241_7, :rent_ontime_1241_7, :rent_payment_method_1241_7,  
            :rent_due_1241_8, :rent_paid_1241_8, :rent_owed_1241_8, :rent_ontime_1241_8, :rent_payment_method_1241_8,  
            :rent_due_1241_9, :rent_paid_1241_9, :rent_owed_1241_9, :rent_ontime_1241_9, :rent_payment_method_1241_9,  
            :rent_due_1723_1, :rent_paid_1723_1, :rent_owed_1723_1, :rent_ontime_1723_1, :rent_payment_method_1723_1,  
            :rent_due_1723_3, :rent_paid_1723_3, :rent_owed_1723_3, :rent_ontime_1723_3, :rent_payment_method_1723_3,  
            :rent_due_1723_2, :rent_paid_1723_2, :rent_owed_1723_2, :rent_ontime_1723_2, :rent_payment_method_1723_2,  
            :rent_due_1723_4, :rent_paid_1723_4, :rent_owed_1723_4, :rent_ontime_1723_4, :rent_payment_method_1723_4,  
            :rent_due_1723_5, :rent_paid_1723_5, :rent_owed_1723_5, :rent_ontime_1723_5, :rent_payment_method_1723_5,  
            :rent_due_2462_B, :rent_paid_2462_B, :rent_owed_2462_B, :rent_ontime_2462_B, :rent_payment_method_2462_B,  
            :rent_due_2462_A, :rent_paid_2462_A, :rent_owed_2462_A, :rent_ontime_2462_A, :rent_payment_method_2462_A,  
            :rent_due_2462_C, :rent_paid_2462_C, :rent_owed_2462_C, :rent_ontime_2462_C, :rent_payment_method_2462_C,
            :month, :year)
    end
end
