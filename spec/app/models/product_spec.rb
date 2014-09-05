require 'spec_helper'

describe 'Product' do
  context 'When I ask for a new product' do
    let(:product) {Product.new()}

    it {expect(product).to be_a Product}
  end
end