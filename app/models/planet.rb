class Planet < ApplicationRecord
    belongs_to :scientist
    belongs_to :mission
end
