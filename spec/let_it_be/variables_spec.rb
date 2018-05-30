require 'rails_helper'

RSpec.describe 'playing with let and its scope' do
  let(:my_hash) do
    {
      moin: 'tach',
      other: other
    }
  end

  context 'other1' do
    let(:other) do
      'other1'
    end

    it 'loads other1' do
      expect(my_hash[:other]).to eq('other1')
    end
  end

  context 'other2' do
    let(:other) do
      'other2'
    end

    it 'loads other2' do
      expect(my_hash[:other]).to eq('other2')
    end
  end
end
