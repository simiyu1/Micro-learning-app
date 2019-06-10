class FixUserFieldsDrop < ActiveRecord::Migration[5.2]
  def change
    drop_table :users do |t|
      t.string :username
      t.string :email
      t.string :region
      t.string :password_digest
      t.datetime :created_at
    end
  end
end
