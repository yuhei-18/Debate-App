class ChangeTitleToDebates < ActiveRecord::Migration[6.0]
  def change
    change_column_null :debates, :title, false
  end
end
