class Service < ApplicationRecord
    has_many_attached :logos
    has_many :users, through: :subscriptions
end