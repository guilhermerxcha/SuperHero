require 'rails_helper'

RSpec.describe Weapon, type: :model do
  it "is invalid if the level is not between 1 and 3000" do
  weapon = build(:weapon, level: FFaker::Random.rand(3000..9999))
  expect(weapon).to_not be_valid
  end
  it 'returns the correct weapon title' do
    
    weapon = create(:weapon)
    expect(weapon.title).to eq("#{weapon.name} #{weapon.description} ##{weapon.level}")
  end
  it 'verification of power of weapon with current_power' do
    
  end
end
