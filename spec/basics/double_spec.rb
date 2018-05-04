require 'rails_helper'

RSpec.describe 'test double https://relishapp.com/rspec/rspec-mocks/v/3-7/docs/basics/test-doubles' do
  it "raises errors when messages not allowed or expected are received" do
    dbl = double("Some Collaborator")
    expect { dbl.foo }.to raise_error
  end

  it "returns canned responses from the methods named in the provided hash" do
    dbl = double("Some Collaborator", foo: 3, bar: 4)
    expect(dbl.foo).to eq(3)
    expect(dbl.bar).to eq(4)
  end
end
