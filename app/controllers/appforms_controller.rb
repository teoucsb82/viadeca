class AppformsController < ApplicationController
  
  def new
    @appform = Appform.new
  end
    
  def create
    @appform = Appform.new(params[:appform])
    if @appform.deliver
      render :thank_you
    else
      render :new
    end
  end
  
end