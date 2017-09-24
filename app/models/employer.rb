class Employer < ApplicationRecord
  has_many :reqs
  has_many :reviews, as: :reviewable
end
