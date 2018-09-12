class AddQtyAndDisplayNameToService < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :qty, :integer
    add_column :services, :display_name, :string
  end
end
