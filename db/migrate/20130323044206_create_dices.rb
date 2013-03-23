class CreateDices < ActiveRecord::Migration
  def change
    create_table :dices do |t|
      t.string :picture
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
