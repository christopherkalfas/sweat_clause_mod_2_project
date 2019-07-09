class Challenge < ApplicationRecord
    belongs_to :charity 
    belongs_to :group

    validates :name, presence: true
    validates :charity_id, presence: true
    validates :group_id, presence: true
end
