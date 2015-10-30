class ProductsController < ApplicationController

  def index
  	@products = Product.all
  	render :json => @products
  end 

  def show
  	@products = Product.find(params[:id])
  	render :json => @products
  end

  def new
  	@products = Product.find(params[:id])
  	render :json => @products
  	redirect_to '/products/cart'
  end

  def create
  end

  def destroy
  end

end
