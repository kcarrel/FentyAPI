class ProductsController < ApplicationController

  def index
    @products = Product.all
    render json: @products
  end

  #show a specific product
  def name
    @products = Product.where(product_name: params[:name])
    render json: @products
  end

  #find generalized color groups
  def color
    @products = Product.where(color_group: params[:color])
    render json: @products
  end


  #find by collection name (e.g poutsicle or pro kiss'r)
  def collection
    @products = Product.where(parent: params[:parent])
    render json:@products
  end

end
