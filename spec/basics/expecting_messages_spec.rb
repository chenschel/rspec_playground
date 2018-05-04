require 'rails_helper'

RSpec.describe 'playing with expecting messages on https://relishapp.com/rspec/rspec-mocks/v/3-7/docs/basics/expecting-messages' do
  xit 'triggers a failure' do
    dbl = double('Some Collaborator')

    expect(dbl).to receive(:foo)
  end

  it 'passes' do
    dbl = double('Some Collaborator')
    expect(dbl).to receive(:foo)
    dbl.foo
  end

  xit "fails when the message is received" do
    dbl = double("Some Collaborator").as_null_object
    expect(dbl).not_to receive(:foo)
    dbl.foo
  end

  it "passes if the message is never received" do
    dbl = double("Some Collaborator").as_null_object
    expect(dbl).not_to receive(:foo)
  end
end
