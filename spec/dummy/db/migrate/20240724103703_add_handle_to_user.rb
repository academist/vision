class AddHandleToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :handle, :string, after: :id
    add_index :users, :handle, unique: true
  end
end
