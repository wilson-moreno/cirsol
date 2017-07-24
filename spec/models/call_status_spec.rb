require 'rails_helper'

RSpec.describe CallStatus, type: :model do
   
   before do
     @call_status = build(:call_status)
   end

   it "has a valid factory" do
      expect(@call_status).to be_valid
   end

   it { should validate_presence_of(:name) }
   it { should validate_presence_of(:description) }
   it { should validate_uniqueness_of(:name).case_insensitive }
   it { should have_many(:calls) }
      
end
