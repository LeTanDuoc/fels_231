class Word < ApplicationRecord
  belongs_to :wordlist, dependent: :destroy
end
