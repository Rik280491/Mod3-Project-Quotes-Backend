class CreateAuthorTags < ActiveRecord::Migration[6.0]
  def change
    create_table :author_tags do |t|
      t.integer :author_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
