require 'rails_helper'

class Invitation
  def self.deliver; end
end

RSpec.describe 'Spies https://relishapp.com/rspec/rspec-mocks/v/3-7/docs/basics/partial-test-doubles' do
  it "passes when the message has been received" do
    invitation = spy('invitation')
    invitation.deliver
    expect(invitation).to have_received(:deliver)
  end

  it "passes when the expectation is met" do
    allow(Invitation).to receive(:deliver)
    Invitation.deliver
    expect(Invitation).to have_received(:deliver)
  end

  xexample "for a spy" do
    invitation = spy('invitation')
    expect(invitation).to have_received(:deliver)
  end

  xexample "for a partial double" do
    allow(Invitation).to receive(:deliver)
    expect(Invitation).to have_received(:deliver)
  end
end
