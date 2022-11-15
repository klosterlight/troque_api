class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.datetime :expires_at
      t.text :description
      t.integer :status, default: 0, null: false

      t.timestamps
    end
  end
end
