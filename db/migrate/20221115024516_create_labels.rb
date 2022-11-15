class CreateLabels < ActiveRecord::Migration[7.0]
  def change
    create_table :labels do |t|
      t.string :name
      t.boolean :is_active, default: true

      t.timestamps
    end
    add_index :labels, :name, unique: true
  end
end
