class Patient < ApplicationRecord
  belongs_to :volunteer
  has_many :answers
end
