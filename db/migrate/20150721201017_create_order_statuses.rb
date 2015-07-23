class CreateOrderStatuses < ActiveRecord::Migration
  def change
    create_table :order_statuses do |t|
      t.string :poster
      t.string :status
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
     add_foreign_key :order_statuses, :orders
  end
end
