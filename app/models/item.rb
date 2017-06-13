class Item < ActiveRecord::Base
  before_update { self.email = email.downcase }
  attr_accessor :xemail
  attr_accessor :xprice
  attr_accessor :cprice
  attr_accessor :time1
  attr_accessor :time2
  attr_accessor :timediff
    validates :productname, :chours, :baseprice, :category, :presence => true
  
  
end
