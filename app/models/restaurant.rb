class Restaurant < ActiveRecord::Base
   has_many :reviews, dependent: :destroy
   enum category: {chinese: 0, italian: 1, japanese: 2, french: 3, belgian: 4}

   validates :name, :address, :category, presence: true
end
