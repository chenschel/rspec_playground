require 'rails_helper'

RSpec.describe Person, type: :model do
  let(:person) { create(:person) }

  it 'receive #first_name' do
    expect(person.first_name).to eq('John')
  end

  it '#full_name' do
    # expect(person).to_not receive(:first_name)
    expect(person.full_name).to eq('John Denver')
  end

  context 'has gender set' do
    let(:male) { create(:person_male) }

    it '#gemder' do
      expect(male.gender).to eq('male')
    end
  end
end
