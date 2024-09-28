require 'stripe'

Stripe.api_key = 'sk_test...'

customers = Stripe::Customer.list(limit:10000)

customers_with_no_subscriptions = []

customers.each do |customer|
  subscriptions = Stripe::Subscription.list(customer: customer.id, status:'all')
  customers_with_no_subscriptions << customer.id if subscriptions.select {|sub| %w[trialing active past_due].include?(sub.status) }.empty?  && %w[us ca].include?(customer.address&.country&.downcase)
  # customers_with_no_subscriptions << customer.id if subscriptions.empty? && %w[us ca].include?(customer.address&.country&.downcase)
end

pp customers_with_no_subscriptions