class FixArticlefielddrop < ActiveRecord::Migration[5.2]
  def change
    drop_table :articles do |t|
      t.string :title
      t.string :author
      t.string :tags
      t.datetime :created_at
    end
  end
end
