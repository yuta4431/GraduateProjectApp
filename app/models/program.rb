class Program < ApplicationRecord
  has_many :hosts
  belongs_to :user, optional: true

  validates :name, presence: true, length: { maximum: 100 }
  validates :host_name, presence: true, length: { maximum: 100 }
  validates :channel, presence: true
  validates :broadcast_day, presence: true, length: { maximum: 20 }
  validates :start_time, presence: true
  validates :end_time, presence: true
end