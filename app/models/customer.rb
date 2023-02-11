class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum age: {teens: 0, twenties: 1, thirties: 2, forties: 3, fifties: 4, over_60s: 5 }

  has_many :comments
  has_many :likes
  has_many :reviews

end
