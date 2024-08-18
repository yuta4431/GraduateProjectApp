class Host < ApplicationRecord
  belongs_to :program

  validates :name, presence: true, uniqueness: { scope: :program_id }, length: { maximum: 50 }
  validates :program, presence: true
end
