require 'rails_helper'

RSpec.describe Will, type: :model do
  before do
    @will = FactoryBot.build(:will)
  end
end
