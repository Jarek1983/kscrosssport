class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.string :president
      t.string :vice_president
      t.string :treasure
      t.text :description

      t.timestamps
    end
  end
end
