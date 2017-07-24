class Religion < ApplicationRecord
	self.table_name = 'cirs_religions'
        validates :name, :short_name, presence: :true
        validates :name, :short_name, uniqueness: { case_sensetive: false }        

        has_many :contacts
end
