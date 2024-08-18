class Host < ApplicationRecord
  has_many :programs

  validates :host_name, presence: true, length: { maximum: 50 }
end
