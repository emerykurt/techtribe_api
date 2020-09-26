class Rating < ApplicationRecord
    belongs_to :company
    validates :rOv, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
    validates :rFName, presence: true
    validates :rLName, presence: true
    validates :rBootcamp, presence: true
end
