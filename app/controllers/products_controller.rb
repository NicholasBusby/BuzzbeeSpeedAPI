class ProductsController < ApplicationController

  def product
    render :json => params['id'].to_json
  end

  def products
    render :json => 'allproducts'.to_json
  end
end