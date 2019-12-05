class Job < ApplicationRecord
    has_many :saves, dependent: :destroy
    has_many :users, through: :saves

    belongs_to :poster, class_name: "User"


    accepts_nested_attributes_for :saves
end
