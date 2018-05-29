require 'rails_helper'

RSpec.describe "A test double" do
  it "raises errors when messages not allowed or expected are received" do
    pending 'it raises an error'
    dbl = double("Some Collaborator")
    dbl.foo
  end

  it "returns canned responses from the methods named in the provided hash" do
    dbl = double('Some Collaborator')
    expect(dbl).to receive(:foo)
    expect(dbl).to receive(:bar).and_return(3)
    dbl.foo
    expect(dbl.bar).to eq(3)
  end

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
