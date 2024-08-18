class Host < ApplicationRecord
  belongs_to :program, optional: true

  validates :host_name, presence: true, length: { maximum: 50 }
end
