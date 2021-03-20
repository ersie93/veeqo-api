class Product < ApplicationRecord
  has_many :orders, through: :ordersToProduct
  validates :name, presence: true
  validates :width, presence: true
  validates :height, presence: true
  validates :depth, presence: true
  validates :weight_grams, presence: true


  validates :stock, presence: true, numericality: { only_integer: true }

    # has_one_attached :photo
end
