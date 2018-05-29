require 'rails_helper'

RSpec.describe Person, type: :model do
  let(:person) { Person.new(first_name: 'John', last_name: 'Doe') }

  it 'receive #first_name' do
    expect(person.first_name).to eq('John')
  end

  it '#full_name' do
    # expect(person).to_not receive(:first_name)
    expect(person.full_name).to eq('John Doe')
  end
end
