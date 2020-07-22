class Mission < ApplicationRecord
    has_many :planets
    has_many :scientists, through: :planets
end
