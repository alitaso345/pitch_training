class Note < ApplicationRecord

  validates :name, presence: true
  validates :file_name, presence: true
  validates :keyboard_number, presence: true
end
