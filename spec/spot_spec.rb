# frozen_string_literal: true

require_relative '../lib/spot'

describe Spot do
  subject(:spot) { described_class.new }
  describe '#mark_x' do
    it 'changes mark when mark is empty' do
      spot.mark_x
      expect(spot.mark).to eq(:X)
    end

    it "doesn't change when the spot has already been marked" do
      spot.mark_o
      spot.mark_x
      expect(spot.mark).not_to eq(:X)
    end
  end

  describe '#mark_o' do
    it 'changes mark when mark is empty' do
      spot.mark_o
      expect(spot.mark).to eq(:O)
    end

    it "doesn't change when the spot has already been marked" do
      spot.mark_x
      spot.mark_o
      expect(spot.mark).not_to eq(:O)
    end
  end

  describe '#empty' do
    it 'Empties existing mark' do
      spot.mark_x
      spot.empty
      expect(spot.mark).to eq(:' ')
    end
  end
end
