class Circuit < ApplicationRecord
      self.table_name = 'cirs_circuits'
      validates :name, :short_name, presence: true
      validates :name, :short_name, uniqueness: { case_sensitive: false }

      belongs_to :language
      belongs_to :circuit_overseer, class_name: "Publisher", foreign_key: "circuit_overseer_id", primary_key: "id"
      has_many :congregations
     
end
