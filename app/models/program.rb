class Program < ApplicationRecord
  has_many :hosts

  validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
  validates :channel, presence: true
  validates :date_and_time
end
