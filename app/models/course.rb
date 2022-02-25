class Course < ApplicationRecord
  has_many :lessons

  def price_usd
    Money.from_cents(price, 'USD').format
  end
end
