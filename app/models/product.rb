class Product < ActiveRecord::Base
  attr_accessible :name, :price, :released_at
  
  def self.calculate_price(col_name)
    params[:column] = col_name
    self.calculate(:price, params[:column])
  end

  def self.is_product_exist?(product_name)
    Product.exists? ["name = '#{product_name}'"]
  end

  
  
end
