class RemoveIndex < ActiveRecord::Migration[7.0]
  def change
    remove_index :users, :email
    remove_index :users, :password_digest
    add_index :users, :password_digest, unique: true
    add_index :users, :email, unique: true
  end
end
