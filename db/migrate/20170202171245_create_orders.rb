class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :invoice
      t.references :user, index: true, foreign_key: true
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
