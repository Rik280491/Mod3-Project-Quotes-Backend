class Game < ApplicationRecord
  belongs_to :user
  has_many :quote_games 
  has_many :quotes, through: :quote_games 

  def username=(username)
    self.user = User.find_or_create_by(name: username)
  end
end
