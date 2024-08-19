class Post < ApplicationRecord
  belongs_to :user
  belongs_to :program, optional: true

  validates :title, presence: true, length: { maximum: 255 }
  validates :broadcast_date, presence: true
  validates :content, presence: true, length: { maximum: 65_535 }
end
