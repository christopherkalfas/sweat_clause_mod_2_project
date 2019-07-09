class Pledge < ApplicationRecord
    belongs_to :user
    belongs_to :charity 
    validates :amount, presence: true
   
end
