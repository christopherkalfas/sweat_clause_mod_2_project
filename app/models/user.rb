class User < ApplicationRecord
    has_secure_password
    has_many :pledges
    has_many :charities, through: :pledges
    belongs_to :group


    validates :username, presence: true, uniqueness: true, :on => :create
    validates :password, presence: true, length: { minimum: 4}
end
