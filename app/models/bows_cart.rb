class BowsCart < ApplicationRecord
  belongs_to :cart
  belongs_to :bow
end
