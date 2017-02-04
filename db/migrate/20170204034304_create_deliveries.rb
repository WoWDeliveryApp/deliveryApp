class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.boolean :accepted
      t.boolean :delivered
      t.boolean :refused
      t.string :description
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
