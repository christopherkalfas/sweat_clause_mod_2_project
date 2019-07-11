class Challenge < ApplicationRecord
    belongs_to :charity 
    belongs_to :group
    has_many :activity_trackers
    has_many :users, through: :activity_trackers
    validates :name, presence: true
    validates :charity_id, presence: true
    validates :group_id, presence: true
end
