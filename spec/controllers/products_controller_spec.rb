require 'spec_helper'

describe ProductsController do
  describe 'GET #show' do
    context 'with valid id' do
      let(:api_response) {{id: 1, name: 'stuff'}}
      before(:each) {Product.stub(:find).and_return(api_response)}
      it 'responds with a 200' do
        get :show, {id: 1}
        expect(response.status).to eq(200)
      end
    end
  end

  describe 'GET #index' do
    context 'ask for products' do
      let(:api_response) do
        output1 = Product.new()
        output2 = Product.new()
        output1.id = 1
        output1.name = 'magic'
        output2.id = 2
        output2.name = 'fountian'
        full_output = [output1, output2]
        full_output
      end

      let(:where) { double("where object") }

      before(:each) {
        where.stub(:order).and_return(api_response)
        Product.stub(:where).and_return(where)
      }

      context 'format is json' do
        it 'responds with an array of products' do
          get :index, {order_by: 'id', order_direction: 'asc'}
          expect(response.body).to eq(api_response.to_json)
        end
      end

      context 'format is xml' do
        it 'responds with an array of products' do
          get :index, {order_by: 'id', order_direction: 'asc', format: 'xml'}
          expect(response.body).to eq(api_response.to_xml)
        end
      end
    end
  end

  describe 'POST #create' do
    context 'create a product' do
      let (:identifier) {1337}
      let(:product) do
        output = Product.new()
        output.id = identifier
        output
      end
      before(:each) {Product.stub(:create, {product: {name: 'test'}}).and_return(product)}
      it 'responds with an id number' do
        post :create, {product: {name: 'test'}}
        expect(response.body).to eq(identifier.to_s)
      end
    end
  end
end