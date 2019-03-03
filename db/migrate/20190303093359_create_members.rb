class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :nickname
      t.string :mail
      t.integer :number, limit: 1
      t.text :message

      t.timestamps
    end
  end
end
