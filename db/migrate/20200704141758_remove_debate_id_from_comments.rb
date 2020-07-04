class RemoveDebateIdFromComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :debate_id, :integer
  end
end
