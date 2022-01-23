class Lesson < ApplicationRecord
  validates :title, presence: true

  has_many :lesson_targets
  has_many :notes, through: :lesson_targets
end
