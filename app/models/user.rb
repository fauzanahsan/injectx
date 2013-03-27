class User < ActiveRecord::Base
  has_secure_password
  validates_format_of :name, with: /^\w+$/

  def self.is_user_exist?(username)
    !User.find(:first, :conditions => "name = '#{username}'").nil?
  end

  def self.get_all_regular_user_based_on(col_name)
    User.find(:all, :group => col_name, :conditions => { :admin => false })
  end 

  def self.authenticate_user(name, passwd)
    !self.where("name = '#{name}' AND password_digest = '#{passwd}'").first.nil?
  end
end
