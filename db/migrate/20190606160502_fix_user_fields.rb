class FixUserFields < ActiveRecord::Migration[5.2]
  def change
    drop_table :microusers do |t|
      t.string :name
      t.string :email
      t.string :region
      t.string :password
      t.datetime :created_at
    end
  end
end
