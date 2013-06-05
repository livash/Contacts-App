class AddTokenUsers < ActiveRecord::Migration
  def change
    add_column :users, :token, :string
    add_column :users, :password, :string
  end
end
