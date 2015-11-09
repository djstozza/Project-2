class TransactionsController < ApplicationController

  def create
    # Amount in cents
   
    @@item = Item.find(params[:id])
    token = params[:stripeToken]

      begin
        charge = Stripe::Charge.create(
        :amount      => @@item.price*100,
        :currency    => 'aud',
        :card        => token,
        :description => @current_user.name
        )

        @sale = Sale.create(buyer_email: @current_user.email)
        @@item.sale = @sale
        redirect_to pickup_url(guid: @sale.guid)
      

      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to item_path(item)
      end
  end


  def pickup

    @sale = Sale.find_by!(guid: params[:guid])
 	  @sale.items << @@item

 	  @@item.destroy
  end


end