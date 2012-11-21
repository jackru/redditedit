class PaymentsController < ApplicationController
  def new
  	url = GoCardless.new_subscription_url(
	  :amount => "5.00",
	  :name => "Premium Account",
	  :interval_unit => "month",
	  :interval_length => 1
	)

	redirect_to url
  end

  def create
  end
end
