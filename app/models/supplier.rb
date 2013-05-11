class Supplier < ActiveRecord::Base
  attr_accessible :email, :founded_at, :name
  has_many :products
end
