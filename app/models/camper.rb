class Camper < ApplicationRecord
    include ActiveModel::Validations
    validates :name, presence: true
    validates :age, numericality: {in:8...18}
    has_many :signups
    has_many :activities, through: :signups


end
