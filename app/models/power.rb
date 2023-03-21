class Power < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }, uniqueness: { case_sensitive: false }
  validates :damage, presence: true
  validates :cooldown, presence: true
end
