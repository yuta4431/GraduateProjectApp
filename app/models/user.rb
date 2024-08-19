class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :programs
  has_many :hosts

  validates :name, presence: true, uniqueness: true, length: { maximum: 255 }
  validates :password, length: { minimum: 8 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
end
