class User < ApplicationRecord
    # before_action :authenticate
    has_one_attached :avatar
    has_many :subscriptions
    has_many :services, through: :subscriptions
    has_many :user_programs
    has_many :programs, through: :user_programs
    has_secure_password

    validates :username, presence: true
    validates :username, uniqueness: true
    # validates :username, length: { minimum: 4 }
    # validates :email, presence: true
    # validates :email, uniqueness: true
    # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
