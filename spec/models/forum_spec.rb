require 'spec_helper'

describe Forum do
  let(:forum) { FactoryGirl.create(:forum) }

  subject { forum }

  it { should be_valid }
  it { should respond_to(:title) }
  it { should respond_to(:desc) }
end
