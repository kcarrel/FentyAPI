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

  def ingredient
    ingredient = params[:ingredient]
    @products = Product.where(
      Product.arel_table[:ingredient_list]
      .lower
      .matches("%#{ingredient.downcase}%")
    )
    render json: @products
  end

  #find by price point
  def price
    price = params[:price]
    @products = Product.where(price: params[:price])
    render json: @products
  end

  #find by generalized color group
  def color
    color = params[:color]
    @products = Product.where(
      Product.arel_table[:color_group]
      .lower
      .matches("%#{color.downcase}%")
    )
    render json: @products
  end


  #find by collection name (e.g poutsicle or pro kiss'r)
  def collection
    collection = params[:collection]
    @products = Product.where(
      Product.arel_table[:parent]
      .lower
      .matches("%#{collection.downcase}%")
    )
    render json:@products
  end

  #find by specific type of product
  def type
    type = params[:type]
    @products = Product.where(
      Product.arel_table[:product_type]
      .lower
      .matches("%#{type.downcase}%")
    )
    render json:@products
  end

end
