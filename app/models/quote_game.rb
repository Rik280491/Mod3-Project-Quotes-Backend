class QuoteGame < ApplicationRecord
  belongs_to :game
  belongs_to :quote
end
