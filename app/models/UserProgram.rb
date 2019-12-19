class UserProgram < ApplicationRecord
    has_many_attached :poster
    belongs_to :user
    belongs_to :programs
end