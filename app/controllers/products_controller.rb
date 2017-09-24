class ProductsController < ApplicationController

  def index
    @title = "All Products"
    @products = Product.all

    sort_attribute = params[:sort]
    descending = params[:desc]
    discount_item = params[:discount]
    random_id = params[:id]
    search_term = params[:search_term]
    category_attribute = params[:category]

    if category_attribute
      category = Category.find_by(name: category_attribute)
      @products = category.products
    end
    
    if descending && descending == "true"
      @products = @products.order(sort_attribute => :desc)
    elsif sort_attribute
      @products = @products.order(sort_attribute)
    elsif discount_item
      @products = @products.where("price < ?", 50)
    elsif random_id
      random_id = @products.ids.sample
      product = Product.find(random_id)
      redirect_to "/products/#{ product.id }"
    elsif search_term
      @products = @products.category.where("name iLIKE ?", "%#{ search_term }%")
    end
  end

  def new
    @suppliers = Supplier.all
  end

  def create
    product = Product.new(
                          name: params[:name],
                          price: params[:price],
                          description: params[:description],
                          supplier_id: params[:supplier_id]
                          )
    product.save

    image = Image.new(
                      product_id: params[:product_id],
                      url: params[:url]
                      )
    image.save

    flash[:success] = "You added a #{ product.name } to the tank"
    redirect_to "/products/#{ product.id }" 
  end

  def show
    @title = "Product"
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])

    product.assign_attributes(
                              name: params[:name],
                              price: params[:price],
                              description: params[:description],
                              )

    product.save

    image = Image.find(params[:id])
    
    product.assign_attributes(
                              product_id: params[:product_id],
                              url: params[:url]
                              )

    product.save

    flash[:success] = "You edited your #{ product.name }. Be sure to say hi next time you visit."
    redirect_to "/products/#{ product.id }"
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:warning] = "You successfully killed a #{ product.name }"
    redirect_to "/products"
  end

end
