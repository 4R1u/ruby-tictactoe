# frozen_string_literal: true

require_relative '../lib/board'

describe Board do
  subject(:game) { described_class.new }
  describe '#winner?' do
    context 'when X wins 1-2-3' do
      before do
        game.mark_x(0, 0)
        game.mark_x(0, 1)
        game.mark_x(0, 2)
      end
      it 'X wins' do
        expect(game.winner?(:X)).to be(true)
      end
    end
    context 'when X wins 4-5-6' do
      before do
        game.mark_x(1, 0)
        game.mark_x(1, 1)
        game.mark_x(1, 2)
      end
      it 'X wins' do
        expect(game.winner?(:X)).to be(true)
      end
    end
    context 'when X wins 7-8-9' do
      before do
        game.mark_x(2, 0)
        game.mark_x(2, 1)
        game.mark_x(2, 2)
      end
      it 'X wins' do
        expect(game.winner?(:X)).to be(true)
      end
    end

    context 'when X wins 1-4-7' do
      before do
        game.mark_x(0, 0)
        game.mark_x(1, 0)
        game.mark_x(2, 0)
      end
      it 'X wins' do
        expect(game.winner?(:X)).to be(true)
      end
    end
    context 'when X wins 2-5-8' do
      before do
        game.mark_x(0, 1)
        game.mark_x(1, 1)
        game.mark_x(2, 1)
      end
      it 'X wins' do
        expect(game.winner?(:X)).to be(true)
      end
    end
    context 'when X wins 3-6-9' do
      before do
        game.mark_x(0, 2)
        game.mark_x(1, 2)
        game.mark_x(2, 2)
      end
      it 'X wins' do
        expect(game.winner?(:X)).to be(true)
      end
    end

    context 'when X wins 1-5-9' do
      before do
        game.mark_x(0, 0)
        game.mark_x(1, 1)
        game.mark_x(2, 2)
      end
      it 'X wins' do
        expect(game.winner?(:X)).to be(true)
      end
    end
    context 'when X wins 3-5-7' do
      before do
        game.mark_x(0, 2)
        game.mark_x(1, 1)
        game.mark_x(2, 0)
      end
      it 'X wins' do
        expect(game.winner?(:X)).to be(true)
      end
    end

    context 'when O wins 1-2-3' do
      before do
        game.mark_o(0, 0)
        game.mark_o(0, 1)
        game.mark_o(0, 2)
      end
      it 'O wins' do
        expect(game.winner?(:O)).to be(true)
      end
    end
    context 'when X wins 4-5-6' do
      before do
        game.mark_o(1, 0)
        game.mark_o(1, 1)
        game.mark_o(1, 2)
      end
      it 'X wins' do
        expect(game.winner?(:O)).to be(true)
      end
    end
    context 'when O wins 7-8-9' do
      before do
        game.mark_o(2, 0)
        game.mark_o(2, 1)
        game.mark_o(2, 2)
      end
      it 'O wins' do
        expect(game.winner?(:O)).to be(true)
      end
    end

    context 'when O wins 1-4-7' do
      before do
        game.mark_o(0, 0)
        game.mark_o(1, 0)
        game.mark_o(2, 0)
      end
      it 'O wins' do
        expect(game.winner?(:O)).to be(true)
      end
    end
    context 'when O wins 2-5-8' do
      before do
        game.mark_o(0, 1)
        game.mark_o(1, 1)
        game.mark_o(2, 1)
      end
      it 'O wins' do
        expect(game.winner?(:O)).to be(true)
      end
    end
    context 'when O wins 3-6-9' do
      before do
        game.mark_o(0, 2)
        game.mark_o(1, 2)
        game.mark_o(2, 2)
      end
      it 'O wins' do
        expect(game.winner?(:O)).to be(true)
      end
    end

    context 'when O wins 1-5-9' do
      before do
        game.mark_o(0, 0)
        game.mark_o(1, 1)
        game.mark_o(2, 2)
      end
      it 'O wins' do
        expect(game.winner?(:O)).to be(true)
      end
    end
    context 'when O wins 3-5-7' do
      before do
        game.mark_o(0, 2)
        game.mark_o(1, 1)
        game.mark_o(2, 0)
      end
      it 'O wins' do
        expect(game.winner?(:O)).to be(true)
      end
    end
  end

  describe '#full?' do
    context 'when the board is empty' do
      it 'returns false' do
        expect(game.full?).to be(false)
      end
    end

    context 'when the board is neither full, nor empty' do
      before do
        game.mark_x(0, 0)
        game.mark_o(0, 1)
        game.mark_x(0, 2)
        game.mark_o(1, 0)
        game.mark_x(1, 1)
      end

      it 'returns false' do
        expect(game.full?).to be(false)
      end
    end

    context 'when the board is full' do
      before do
        game.mark_o(0, 0)
        game.mark_x(0, 1)
        game.mark_o(0, 2)
        game.mark_x(1, 0)
        game.mark_o(1, 1)
        game.mark_x(1, 2)
        game.mark_o(2, 0)
        game.mark_x(2, 1)
        game.mark_o(2, 2)
      end

      it 'returns true' do
        expect(game.full?).to be(true)
      end
    end
  end
end
