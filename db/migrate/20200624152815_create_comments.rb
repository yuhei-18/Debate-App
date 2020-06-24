class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string "name", null: false
      t.integer "age"
      t.string "profession"
      t.text "message", null: false
      t.integer "debate_id", null: false

      t.timestamps
    end
  end
end
