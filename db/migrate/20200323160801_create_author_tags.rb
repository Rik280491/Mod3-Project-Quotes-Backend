class CreateAuthorTags < ActiveRecord::Migration[6.0]
  def change
    create_table :author_tags do |t|
      t.references :author, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
