class Service < ApplicationRecord
  validates :name, presence: true
  validates :rate, presence: true
  validates_numericality_of :rate

  def self.category?(category)
    Service.where({category: category})
  end
end
