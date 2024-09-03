require 'stripe'

Stripe.api_key = 'sk_test....'

customers = Stripe::Customer.list()

customers_with_no_subscriptions = []

customers.each do |customer|
  subscriptions = Stripe::Subscription.list(customer: customer.id)
  customers_with_no_subscriptions << customer.id if subscriptions.select {|sub| %w[trialing active past_due].include?(sub.status) }.empty?
end

pp customers_with_no_subscriptions