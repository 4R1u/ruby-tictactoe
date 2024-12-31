# frozen_string_literal: true

require_relative '../lib/board'

describe Board do
  subject(:spot) { described_class.new }
  describe '#winner?' do
    context 'when X wins 1-2-3' do
      before do
        spot.mark_x(0, 0)
        spot.mark_x(0, 1)
        spot.mark_x(0, 2)
      end
      it 'X wins' do
        expect(spot.winner?(:X)).to be(true)
      end
    end
    context 'when X wins 4-5-6' do
      before do
        spot.mark_x(1, 0)
        spot.mark_x(1, 1)
        spot.mark_x(1, 2)
      end
      it 'X wins' do
        expect(spot.winner?(:X)).to be(true)
      end
    end
    context 'when X wins 7-8-9' do
      before do
        spot.mark_x(2, 0)
        spot.mark_x(2, 1)
        spot.mark_x(2, 2)
      end
      it 'X wins' do
        expect(spot.winner?(:X)).to be(true)
      end
    end

    context 'when X wins 1-4-7' do
      before do
        spot.mark_x(0, 0)
        spot.mark_x(1, 0)
        spot.mark_x(2, 0)
      end
      it 'X wins' do
        expect(spot.winner?(:X)).to be(true)
      end
    end
    context 'when X wins 2-5-8' do
      before do
        spot.mark_x(0, 1)
        spot.mark_x(1, 1)
        spot.mark_x(2, 1)
      end
      it 'X wins' do
        expect(spot.winner?(:X)).to be(true)
      end
    end
    context 'when X wins 3-6-9' do
      before do
        spot.mark_x(0, 2)
        spot.mark_x(1, 2)
        spot.mark_x(2, 2)
      end
      it 'X wins' do
        expect(spot.winner?(:X)).to be(true)
      end
    end

    context 'when X wins 1-5-9' do
      before do
        spot.mark_x(0, 0)
        spot.mark_x(1, 1)
        spot.mark_x(2, 2)
      end
      it 'X wins' do
        expect(spot.winner?(:X)).to be(true)
      end
    end
    context 'when X wins 3-5-7' do
      before do
        spot.mark_x(0, 2)
        spot.mark_x(1, 1)
        spot.mark_x(2, 0)
      end
      it 'X wins' do
        expect(spot.winner?(:X)).to be(true)
      end
    end

    context 'when O wins 1-2-3' do
      before do
        spot.mark_o(0, 0)
        spot.mark_o(0, 1)
        spot.mark_o(0, 2)
      end
      it 'O wins' do
        expect(spot.winner?(:O)).to be(true)
      end
    end
    context 'when X wins 4-5-6' do
      before do
        spot.mark_o(1, 0)
        spot.mark_o(1, 1)
        spot.mark_o(1, 2)
      end
      it 'X wins' do
        expect(spot.winner?(:O)).to be(true)
      end
    end
    context 'when O wins 7-8-9' do
      before do
        spot.mark_o(2, 0)
        spot.mark_o(2, 1)
        spot.mark_o(2, 2)
      end
      it 'O wins' do
        expect(spot.winner?(:O)).to be(true)
      end
    end

    context 'when O wins 1-4-7' do
      before do
        spot.mark_o(0, 0)
        spot.mark_o(1, 0)
        spot.mark_o(2, 0)
      end
      it 'O wins' do
        expect(spot.winner?(:O)).to be(true)
      end
    end
    context 'when O wins 2-5-8' do
      before do
        spot.mark_o(0, 1)
        spot.mark_o(1, 1)
        spot.mark_o(2, 1)
      end
      it 'O wins' do
        expect(spot.winner?(:O)).to be(true)
      end
    end
    context 'when O wins 3-6-9' do
      before do
        spot.mark_o(0, 2)
        spot.mark_o(1, 2)
        spot.mark_o(2, 2)
      end
      it 'O wins' do
        expect(spot.winner?(:O)).to be(true)
      end
    end

    context 'when O wins 1-5-9' do
      before do
        spot.mark_o(0, 0)
        spot.mark_o(1, 1)
        spot.mark_o(2, 2)
      end
      it 'O wins' do
        expect(spot.winner?(:O)).to be(true)
      end
    end
    context 'when O wins 3-5-7' do
      before do
        spot.mark_o(0, 2)
        spot.mark_o(1, 1)
        spot.mark_o(2, 0)
      end
      it 'O wins' do
        expect(spot.winner?(:O)).to be(true)
      end
    end
  end

  describe '#full?' do
    context 'the board is empty' do
      it 'returns false' do
        expect(spot.full?).to be(false)
      end
    end
  end
end
