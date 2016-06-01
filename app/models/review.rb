class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :content, :rating, :restaurant, presence: true
  validates :rating, :numericality => {:only_integer => true}
  validates :rating, :numericality => {greater_than_or_equal_to: 0, less_than_or_equal_to: 5}
end
