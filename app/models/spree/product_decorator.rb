Spree::Product.class_eval do

  scope :gift_cards, -> { where(is_gift_card: true) }
  scope :not_gift_cards, -> { where(is_gift_card: false) }

  def set_backorderable
    stock_items.each do |stock_item|
      stock_item.update_attributes backorderable: true
    end
  end
end
