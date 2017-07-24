class Contact < ApplicationRecord
      self.table_name = 'cirs_contacts'
      belongs_to :language
end
