class Quote < ApplicationRecord
  belongs_to :author
  has_many :quote_games 
  has_many :games, through: :quote_games
end
