class CreateQuoteGames < ActiveRecord::Migration[6.0]
  def change
    create_table :quote_games do |t|
      t.integer :game_id
      t.integer :quote_id

      t.timestamps
    end
  end
end
