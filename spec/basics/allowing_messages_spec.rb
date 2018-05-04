require 'rails_helper'

RSpec.describe 'allowing messages https://relishapp.com/rspec/rspec-mocks/v/3-7/docs/basics/allowing-messages' do
  it "returns nil from allowed messages" do
    dbl = double("Some Collaborator")
    allow(dbl).to receive(:foo)
    expect(dbl.foo).to be_nil
  end

  it "configures return values for the provided messages" do
    dbl = double("Some Collaborator")
    allow(dbl).to receive_messages(foo: 2, bar: 3)
    expect(dbl.foo).to eq(2)
    expect(dbl.bar).to eq(3)
  end
end
