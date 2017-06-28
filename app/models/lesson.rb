class Lesson < ApplicationRecord
  belongs_to :categories, dependent: :destroy
  has_one :result
end
