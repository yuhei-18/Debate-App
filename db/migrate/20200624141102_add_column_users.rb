class AddColumnUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :debate_id, :integer, :null => false
  end
end
