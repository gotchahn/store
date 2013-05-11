class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :supplier
  attr_accessible :name, :price, :sku, :category_id
end
