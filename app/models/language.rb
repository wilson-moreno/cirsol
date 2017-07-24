class Language < ApplicationRecord
      self.table_name = 'cirs_languages'
      validates :name, :short_name, presence: true   
      validates :name, :short_name, uniqueness: true

      has_many :circuits
      has_many :contacts
      has_many :congregations
end
