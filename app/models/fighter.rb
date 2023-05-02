# frozen_string_literal: true

# Description/Explanation of Fighter class
class Fighter < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }, uniqueness: { case_sensitive: false }
  validates :health, presence: true
  validates :attack_power, presence: true
  validates :defense_power, presence: true

  belongs_to :vocation, foreign_key: 'vocation_id'
  has_and_belongs_to_many :powers
end
