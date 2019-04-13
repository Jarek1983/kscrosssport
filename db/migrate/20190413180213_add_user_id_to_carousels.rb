class AddUserIdToCarousels < ActiveRecord::Migration[5.2]
  def change
    add_reference :carousels, :user, foreign_key: true
  end
end
