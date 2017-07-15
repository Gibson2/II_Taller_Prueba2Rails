class Product < ApplicationRecord
  belongs_to :category
  validates :price, presence: true
  before_save :premium_false

  def productwithprice

  	if pr.nil?

  	end

  end



end
