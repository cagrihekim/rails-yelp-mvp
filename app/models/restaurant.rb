class Restaurant < ApplicationRecord
  categories = ['chinese', 'italian', 'japanese', 'french', 'belgian']

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: categories, message: 'is not a valid category' }
  has_many :reviews, dependent: :destroy
end
