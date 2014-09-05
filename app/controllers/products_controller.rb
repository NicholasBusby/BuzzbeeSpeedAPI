
class ProductsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def show
    product = Product.find(params[:id])
    render_output(product)
  end

  def index
    product = Product.where("").order(
        "#{params[:order_by]} #{params[:order_direction]}")
    render_output(product)
  end

  def create
    product = request.params[:product]
    product = Product.create product
    render_output(product.id)
  end

  private
  def render_output(output)
    if params['format'] == 'xml'
      render :xml => output.to_xml
    else
      render :json => output.to_json
    end

  end
end
