class FixArticlefieldCreate < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :user_id
      t.string :author
      t.string :tags
      t.datetime :created_at
      t.timestamps null: false
    end
  end
end
