class ScommentsController < ApplicationController
  before_filter :signed_in_user
  def create
    @sale = Sale.find(params[:sale_id])
    @scomment = Scomment.new(params[:scomment])
    @scomment.sale = @sale
   
    if @scomment.save
       flash[:success] = "Offer submited!"
       redirect_to :back
    else
      render 'shared/_scomment_form'
    end
  end

  def new
    @scomment=sale.scomments.new
  end
   
  
end
