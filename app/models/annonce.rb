class Annonce < ActiveRecord::Base
	has_many :reponses
	validates :titre, presence: true
	validates :question, presence: true
end
