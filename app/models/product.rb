class Product < ApplicationRecord
  belongs_to :category
  validates :price, presence: true
  before_save :premium_is_false

  def premium_is_false

  	if self.premium.nil?

  		self.premium = false

  	end

  end



end
