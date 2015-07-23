class AddDateToOrderStatus < ActiveRecord::Migration
  def change
    add_column :order_statuses, :date, :string
  end
end
