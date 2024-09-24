class Host < ApplicationRecord
  has_many :hosts_programs
  has_many :programs, through: :hosts_programs

  validates :host_name, presence: true, length: { maximum: 255 }
end
