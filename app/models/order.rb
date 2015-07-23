class Order < ActiveRecord::Base
   has_many :order_status
   
   def self.search(search)
     if search
       Order.where(oid: search)
     else
       Order.all
     end
   end
end
