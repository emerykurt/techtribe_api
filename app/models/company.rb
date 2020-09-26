class Company < ApplicationRecord
    has_many :ratings
    validates :name, presence: true, uniqueness: true
    validates :twitter, presence: true, format: URI::regexp(%w[http https])
    validates :website, presence: true, format: URI::regexp(%w[http https])
end
