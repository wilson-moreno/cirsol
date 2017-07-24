class Call < ApplicationRecord
      self.table_name = "cirs_calls"
      validates :call_date, :call_day, :call_time, :notes, presence: true

      belongs_to :contact
      belongs_to :call_status      
end
