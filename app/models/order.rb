class Order < ActiveRecord::Base
  attr_accessible :plan_id, :user_id
end
