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
    # context 'when X wins 4-5-6' do
    # context 'when X wins 7-8-9' do

    # context 'when X wins 1-4-7' do
    # context 'when X wins 2-5-8' do
    # context 'when X wins 3-6-9' do

    # context 'when X wins 1-5-9' do
    # context 'when X wins 7-5-3' do

    # context 'when O wins 1-2-3' do
    # context 'when O wins 4-5-6' do
    # context 'when O wins 7-8-9' do

    # context 'when O wins 1-4-7' do
    # context 'when O wins 2-5-8' do
    # context 'when O wins 3-6-9' do

    # context 'when O wins 1-5-9' do
    # context 'when O wins 7-5-3' do
  end
end
