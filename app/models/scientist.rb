class Scientist < ApplicationRecord
    has_many :planets
    has_many :missions, through: :planets
end
