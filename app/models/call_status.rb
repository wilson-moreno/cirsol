class CallStatus < ApplicationRecord
	self.table_name = 'cirs_call_statuses'
        validates :name, :description, presence: true
        validates :name, uniqueness: { case_sensitive: false }      

        has_many :calls
end
