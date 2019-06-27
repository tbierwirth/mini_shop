class MerchantsController < ApplicationController

  def index
    @merchants = Merchant.all
  end

  def show
    @merchant = Merchant.find(params[:id])
  end

  def new

  end

  def create
    Merchant.create(merchant_params)

    redirect_to '/merchants'
  end

  def edit
    @merchant = Merchant.find(params[:id])
  end

  private
  def merchant_params
    params.permit(:name, :address, :city, :state, :zip)
  end

end
