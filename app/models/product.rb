class Product < ApplicationRecord
  belongs_to :category
  validates :price, presence: true
  before_save :premium_is_false
  after_destroy :check_last

  scope :premium, (->{ where(premium:true) })
  scope :last_n, (->(n){ order(:id, limit(n))})

  def premium_is_false

  	if self.premium.nil?

  		self.premium = false

  	end

  end

  def check_last

  	unless self.category.products.any?

  		self.category.destroy

  	end

  end

  def last?

	self.category.products.count == 1 ? true : false

	end

  end