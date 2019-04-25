class AddImageSecondToPractices < ActiveRecord::Migration[5.2]
  def change
    add_column :practices, :image_second, :string
  end
end
