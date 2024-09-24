class Program < ApplicationRecord
  has_many :hosts_programs, dependent: :destroy
  has_many :hosts, through: :hosts_programs
  has_many :posts
  belongs_to :user, optional: true

  validates :title, presence: true, uniqueness: true, length: { maximum: 255 }
  validates :host_name, presence: true, length: { maximum: 255 }
  validates :channel, presence: true
  validates :day_of_week, presence: true, length: { maximum: 255 }
  validates :start_time, presence: true
  validates :end_time, presence: true
end
