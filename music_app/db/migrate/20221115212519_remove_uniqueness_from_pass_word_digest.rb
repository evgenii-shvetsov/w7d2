class RemoveUniquenessFromPassWordDigest < ActiveRecord::Migration[7.0]
  def change
    remove_index :users, :password_digest
    add_index :users, :password_digest
  end
end
