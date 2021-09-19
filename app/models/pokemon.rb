class Pokemon < ApplicationRecord
  has_many :stats
  has_many :poke_types
end
