class ProductsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def show
    test = Product.find(params[:id])
    render_output(test)
  end

  def index
    temp = {:hello => 'world', :number => 3, :hash => {:magic => 'inside'}, :array => [1,2,3,4,5]}
    render_output(temp)
  end

  def create
    product = request.params[:product]
    product = Product.create product
    render_output(product)
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
