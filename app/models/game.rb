class Game < ApplicationRecord
  belongs_to :user
  has_many :quote_games 
  has_many :quotes, through: :quote_games 
end
