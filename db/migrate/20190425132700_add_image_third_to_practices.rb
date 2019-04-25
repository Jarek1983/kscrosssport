class AddImageThirdToPractices < ActiveRecord::Migration[5.2]
  def change
    add_column :practices, :image_third, :string
  end
end
