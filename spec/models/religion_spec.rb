require 'rails_helper'

RSpec.describe Religion, type: :model do

     before do
       @religion = build(:religion)
     end

     it "has a valid factory" do
        expect(@religion).to be_valid
     end

     it { should validate_presence_of(:name) }
     it { should validate_presence_of(:short_name) }
     it { should validate_uniqueness_of(:name) }
     it { should validate_uniqueness_of(:short_name) }     
     it { should have_many(:contacts) }
end
