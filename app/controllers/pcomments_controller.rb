class PcommentsController < ApplicationController
  before_filter :signed_in_user
  def create
    @purchase = Purchase.find(params[:purchase_id])
    @pcomment = Pcomment.new(params[:pcomment])
    @pcomment.purchase = @purchase
   
    if @pcomment.save
       flash[:success] = "Offer submited!"
       redirect_to :back
    else
      render 'shared/_pcomment_form'
    end
  end

  def new
    @pcomment=purchase.pcomments.new
  end
   
  
end
