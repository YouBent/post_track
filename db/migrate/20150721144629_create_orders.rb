class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :oid
      t.string :sender_name
      t.string :sender_address
      t.string :sender_phone
      t.string :receiver_name
      t.string :receiver_address
      t.string :receiver_phone

      t.timestamps null: false
    end
  end
end
