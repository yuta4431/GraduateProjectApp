class Host < ApplicationRecord
  has_many :programs

  validates :host_name, presence: true, length: { maximum: 255 }
end
