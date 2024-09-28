# a class of user permissions
class Permission
  attr_accessor :id, :status

  def initialize(id:, status:)
    @subscription = { id: id, status: status }
    @flags = calc_flags
  end

  private

  def calc_flags
    flags = []
    flags << 'subscription?' if subscription?
    flags << 'invoices?' if invoices?
    flags << 'subscription_active?' if subscription_active

    flags
  end

  def subscription?
    puts 'subscription? was called.'
    @subscription
  end

  def invoices?
    puts 'invoices? has been called.'
    subscription?
  end

  def subscription_active?
    puts 'subscription_active? was called.'
    @subscription if subscription? && @subscription.status == 'active'
  end
end

mariah = Permission.new(id: 'sub_queenshitXXXjkhh', status: 'canceled')
pp mariah.flags
