class ProductsController < ApplicationController

  def index
    @products = Product.all
    render json: @products
  end

  def show
    @product = Product.where(id: params[:id])
    render json: @product
  end

  def random
    random = rand(Product.count)
    @product = Product.find_by(id: random)
    render json: @product

  end


  #show a specific product
  def name
    @products = Product.where(product_name: params[:name])
    render json: @products
  end

  # def ingredient
  #   @products = Product.where("ingredient_list.includes(params[:ingredient])")
  #   render json: @products
  # end

  #find generalized color groups
  def color
    @products = Product.where(color_group: params[:color])
    render json: @products
  end


  #find by collection name (e.g poutsicle or pro kiss'r)
  def collection
    @products = Product.where(parent: params[:collection])
    render json:@products
  end

end
