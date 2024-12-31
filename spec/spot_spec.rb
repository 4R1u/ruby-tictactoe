# frozen_string_literal: true

require_relative '../lib/spot'
require 'colorize'

describe Spot do
  subject(:spot) { described_class.new }
  describe '#mark_x' do
    context 'when mark is empty' do
      it 'changes mark' do
        spot.mark_x
        expect(spot.mark).to eq(:X)
      end
    end

    context 'when the spot has already been marked' do
      it "doesn't change when the spot has already been marked" do
        spot.mark_o
        spot.mark_x
        expect(spot.mark).not_to eq(:X)
      end
    end
  end

  describe '#mark_o' do
    context 'when mark is empty' do
      it 'changes mark' do
        spot.mark_o
        expect(spot.mark).to eq(:O)
      end
    end

    context 'when spot has already been marked' do
      it "doesn't change" do
        spot.mark_x
        spot.mark_o
        expect(spot.mark).not_to eq(:O)
      end
    end
  end

  describe '#empty' do
    it 'Empties existing mark' do
      spot.mark_x
      spot.empty
      expect(spot.mark).to eq(:' ')
    end
  end

  describe '#colored_mark' do
    context 'when the mark is X' do
      it 'returns blue X' do
        spot.mark_x
        expect(spot.colored_mark).to eq('X'.colorize(color: :blue, background: :white))
      end
    end

    context 'when the mark is O' do
      it 'returns red O' do
        spot.mark_o
        expect(spot.colored_mark).to eq('O'.colorize(color: :red, background: :white))
      end
    end

    context "when the mark is ' '" do
      it 'returns a white space' do
        expect(spot.colored_mark).to eq(' '.colorize(background: :white))
      end
    end
  end
end
