class Group < ApplicationRecord
    has_many :challenges
    has_many :charities, through: :challenges
    has_many :users

    validates :name, presence: true
end
