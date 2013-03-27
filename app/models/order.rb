class Order < ActiveRecord::Base
  # attr_accessible :title, :body

  def self.get_all_order_more_than(total)
    self.where(:user_id => 1).group(:user_id).having("total > #{total}")
  end

  def self.get_all_order_less_than(total)
    self.all(:conditions => { :user_id => 1 }, :group => :user_id, :having => "total < #{total}")
  end

  def self.get_detail_order(table_name)
    self.where(:user_id => 1).joins(table_name)
  end
end
