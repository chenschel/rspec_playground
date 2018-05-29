require 'rails_helper'

RSpec.describe Array do
  it 'is empty' do
    arr = []
    arr << 1
    expect(arr).to be_empty, "expected to be empty, got: #{arr.inspect}"
  end
end
