class AddImageToPractice < ActiveRecord::Migration[5.2]
  def change
    add_column :practices, :image, :string
  end
end
