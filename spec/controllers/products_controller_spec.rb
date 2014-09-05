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
end