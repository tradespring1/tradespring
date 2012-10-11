class PurchasesController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]

  def index
    @purchases=Purchase.search(params[:search])
    @sales=Sale.all
  end

  def home 
  	@purchases = Purchase.all
  	@sales = Sale.all
  end

  def create
    @purchase = current_user.purchases.build(params[:purchase])
    if @purchase.save
      flash[:success] = "Purchase created!"
      redirect_to root_path
    else
      render 'static_pages/home'
    end
  end

  def new
    @purchase = Purchase.new(params[:purchase])
  end

  def destroy
  end

end