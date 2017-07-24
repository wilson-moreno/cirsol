require 'rails_helper'

RSpec.describe Language, type: :model do

  before do
     @language = build(:language);
  end


  it "has a valid factory" do
     expect(@language).to be_valid
  end

  it "should have many contacts" do
     association = Language.reflect_on_association(:contacts)
     expect(association.macro).to be(:has_many)
  end

  it "should have many congregations" do
     association = Language.reflect_on_association(:congregations)
     expect(association.macro).to be(:has_many)
  end

  it "should have many circuits" do
     association = Language.reflect_on_association(:circuits)
     expect(association.macro).to be(:has_many)
  end

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:short_name) }
  it { is_expected.to validate_uniqueness_of(:name) }
  it { is_expected.to validate_uniqueness_of(:short_name) }

end

