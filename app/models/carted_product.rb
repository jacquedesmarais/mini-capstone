class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :order, optional: true

  validates :quantity, presence: true
  validates :quantity, numericality: { only_integer: true }
  validates :quantity, numericality: { greater_than: 0 }


  def subtotal
    product.price * quantity
  end
  
end
