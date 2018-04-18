# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_one :cart
  has_many :bows_carts, through: :cart
end
