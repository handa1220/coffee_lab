class Review < ApplicationRecord

  enum degree_of_roasting: {light_roast: 0, medium_roast: 1, dark_roast: 2 }

  belongs_to :customer
  has_many :comments
  has_many :likes

end
