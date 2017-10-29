require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'discounted?' do
    it 'should return true if price is less than 50' do
      product = Product.new(price: 47.50)
      expect(product.discounted).to eq(false)
    end
  end
end
