class Product < ApplicationRecord
  belongs_to :supplier
  belongs_to :carted_product
  has_many :images
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products

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
