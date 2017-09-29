class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :carted_products
  has_many :category_products
  has_many :categories, through: :category_products

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: true
  validates :description, length: { minimum: 5 }
  validates :description, length: { maximum: 500 }

  def discounted?
    price < 50
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def default_image
    if images.count > 0
      images.first.url
    else
      "http://cdn.decoist.com/wp-content/uploads/2013/03/Stylish-Fish-tank-all-about-creating-the-cool-blue-ocean-indoors.jpg"
    end
  end

end
