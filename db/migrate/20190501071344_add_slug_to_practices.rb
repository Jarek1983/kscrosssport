class AddSlugToPractices < ActiveRecord::Migration[5.2]
  def change
    add_column :practices, :slug, :string
    add_index :practices, :slug, unique: true
  end
end
