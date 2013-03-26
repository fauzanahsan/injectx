class Product < ActiveRecord::Base
  attr_accessible :name, :price, :released_at
  
  def self.calculate_price(col_name)
    params[:column] = col_name
    self.calculate(:price, params[:column])
  end
end
