class Product < ApplicationRecord

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  belongs_to :supplier
  has_many :images
  has_many :orders

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
