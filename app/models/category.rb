class Category < ActiveRecord::Base
  attr_accessible :description, :label
  has_many :products
end
