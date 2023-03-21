class Fighter < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }, uniqueness: { case_sensitive: false }
  validates :health, presence: true
  validates :attack_power, presence: true
end
