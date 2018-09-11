class AddCategoryToService < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :category, :string
  end
end
