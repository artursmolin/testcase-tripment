require "rails_helper"

RSpec.describe Api::V1::Procedure, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:procedure_type)}
  end
end
