require 'rails_helper'

RSpec.describe Circuit, type: :model do

    before do
       @circuit = build(:circuit)
       @language = build(:language)
       @circuit_overseer = build(:publisher)
       @circuit.language = @language
       @circuit.circuit_overseer = @circuit_overseer
    end

    it "has a valid factory" do
       expect(@circuit).to be_valid
    end

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:short_name) }
    it { should validate_uniqueness_of(:name).case_insensitive }
    it { should validate_uniqueness_of(:short_name).case_insensitive }

    it { should belong_to(:circuit_overseer).class_name('Publisher').with_foreign_key('circuit_overseer_id').with_primary_key('id') }
    it { should belong_to(:language) }   
    it { should have_many(:congregations) } 
end
