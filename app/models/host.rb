class Host < ApplicationRecord
  belongs_to :program, optional: true

  validates :name, presence: true, length: { maximum: 50 }
end
