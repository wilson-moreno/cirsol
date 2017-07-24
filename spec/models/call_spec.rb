require 'rails_helper'

RSpec.describe Call, type: :model do
    
    before do
      @call = build(:call)
      @contact = build(:contact)
      @call_status = build(:call_status)
      @call.contact = @contact
      @call.call_status = @call_status
    end

    it "has a valid factory" do
       expect(@call).to be_valid
    end

    it { should validate_presence_of(:call_date) }
    it { should validate_presence_of(:call_day) }
    it { should validate_presence_of(:call_time) }
    it { should validate_presence_of(:notes) }

    it { should belong_to(:contact) }
    it { should belong_to(:call_status) }

end
