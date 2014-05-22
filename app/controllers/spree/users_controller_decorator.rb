Spree::UsersController.class_eval do
  before_action :retrieve_gift_cards, only: [:show]

  private
  def retrieve_gift_cards
    @gift_cards = current_spree_user.gift_cards
  end
end

