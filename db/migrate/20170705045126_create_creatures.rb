class CreateCreatures < ActiveRecord::Migration[5.1]
  def change
    create_table :creatures do |t|
      t.string :name
      t.integer :dexterity
      t.boolean :alert_feat

      t.timestamps
    end
  end
end
