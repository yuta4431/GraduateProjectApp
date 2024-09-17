class Program < ApplicationRecord
  has_many :hosts
  has_many :posts
  belongs_to :user, optional: true

  validates :title, presence: true, uniqueness: true, length: { maximum: 255 }
  validates :host_name, presence: true, length: { maximum: 255 }
  validates :channel, presence: true
  validates :day_of_week, presence: true, length: { maximum: 255 }
  validates :start_time, presence: true
  validates :end_time, presence: true

  before_save :create_host_record

  private

  def create_host_record
    host_record = Host.find_or_create_by!(host_name: host_name)
    self.host_id = host_record.id
  end
end
