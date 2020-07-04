class AddDebateRefToComments < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :debate, null: false, foreign_key: true
  end
end
