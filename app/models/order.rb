class Order < ApplicationRecord
  has_many :orders_to_products, dependent: :destroy
end
