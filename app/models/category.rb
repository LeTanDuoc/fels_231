class Category < ApplicationRecord
   has_and_belongs_to_many :user
   has_and_belongs_to_many :wordlist, dependent: :destroy
   has_many :lesson, dependent: :destroy
end
