class Askprovider < ActiveRecord::Base
	# Having relations having many answers to one question and destroying dependently on the selected quesiton
	has_many :answers, dependent: :destroy
end
