class ChargesController < ApplicationController
	def new
	end

	def create
	  # Amount in cents
	  @amount = 2000

	  customer = Stripe::Customer.create(
	    :email => Apply.last.email,
	    :card  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => @amount,
	    :description => 'Via Deca Rental Application Fee',
	    :currency    => 'usd'
	  )

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to charges_path
	end

end
