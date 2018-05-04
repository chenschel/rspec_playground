require 'rails_helper'

RSpec.describe 'partial test doubles https://relishapp.com/rspec/rspec-mocks/v/3-7/docs/basics/partial-test-doubles' do
  let(:string) { 'a string' }
  let(:person) { Person.new(first_name: 'John', last_name: 'Doe') }

  before do
    allow(string).to receive(:length).and_return(500)
  end

  it 'redefines the specified methods' do
    expect(string.length).to eq(500)
  end

  it "does not effect other methods" do
    expect(string.reverse).to eq("gnirts a")
  end

  it "redefines a method" do
    allow(person).to receive(:first_name).and_return(:redefined)
    expect(person.first_name).to eq(:redefined)
  end

  it "restores the redefined method after the example completes" do
    expect(person.first_name).to eq('John')
  end
end
