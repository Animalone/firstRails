class Profile < ApplicationRecord
	validates :userName, presence: true
end
