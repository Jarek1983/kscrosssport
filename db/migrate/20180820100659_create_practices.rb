class CreatePractices < ActiveRecord::Migration[5.2]
  def change
    create_table :practices do |t|
      t.string :title
      t.string :subtitle
      t.string :boxtitle
      t.text :boxinfo

      t.timestamps
    end
  end
end
