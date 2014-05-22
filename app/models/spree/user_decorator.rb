Spree::User.class_eval do
  def gift_cards
    Spree::GiftCard.by_email self.email
  end
end

