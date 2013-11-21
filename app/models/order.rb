class Order < ActiveRecord::Base
  attr_accessible :plan_id, :user_id, :stripe_card_token
  attr_accessor :stripe_card_token
  belongs_to :plan
  belongs_to :user
  accepts_nested_attributes_for :plan
  
  def save_with_payment
      
      @amount = self.plan.price * self.plan.sqfoot
      
      if valid?
          charge = Stripe::Charge.create(amount: @amount, currency: 'usd', card: stripe_card_token)
       
          save!
      end
      rescue Stripe::InvalidRequestError => e
      logger.error "Stripe error while creating customer: #{e.message}"
      errors.add :base, "There was a problem with your credit card."
      false
  end
end
