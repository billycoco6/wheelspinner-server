class Item < ApplicationRecord
  belongs_to :spin
  has_many :games
end
