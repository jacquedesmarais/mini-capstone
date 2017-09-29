class CategoryProduct < ApplicationRecord
  belongs_to :product
  belongs_to :category

  validates :category, uniqueness: { scope: :product }
end
