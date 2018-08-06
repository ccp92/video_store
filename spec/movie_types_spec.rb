# frozen_string_literal: true

require 'movie_types'

describe RegularMovie do
  context 'given a number of days' do
    let(:regular) { RegularMovie.new }
    it 'can calculate cost for a one day rental' do
      expect(regular.rental_cost(1)).to eq(2.0)
    end

    it 'can calculate cost for a two day rental' do
      expect(regular.rental_cost(2)).to eq(2.0)
    end

    it 'can calculate cost for a three day rental' do
      expect(regular.rental_cost(3)).to eq(3.5)
    end

    it 'can calculate cost for a four day rental' do
      expect(regular.rental_cost(4)).to eq(5)
    end

    it 'can calculate reward points for a one day rental' do
      expect(regular.reward_points(1)).to eq(1)
    end

    it 'can calculate reward points for a twenty day rental' do
      expect(regular.reward_points(1)).to eq(1)
    end
  end
end

describe NewMovie do
  context 'given a number of days' do
  let(:new) { NewMovie.new }
    it 'can calculate cost for a one day rental' do
      expect(new.rental_cost(1)).to eq(3.0)
    end

    it 'can calculate cost for a two day rental' do
      expect(new.rental_cost(2)).to eq(6.0)
    end

    it 'can calculate reward points for a one day rental' do
      expect(new.reward_points(1)).to eq(1)
    end

    it 'can calculate reward points for a two day rental' do
      expect(new.reward_points(2)).to eq(2)
    end

    it 'can calculate reward points for a three day rental' do
      expect(new.reward_points(3)).to eq(2)
    end
  end
end

describe KidsMovie do
  context 'for a kids movie' do
    let(:kids) { KidsMovie.new }

    it 'can calculate cost for a one day rental' do
      expect(kids.rental_cost(1)).to eq(1.5)
    end

    it 'can calculate cost for a three day rental' do
      expect(kids.rental_cost(3)).to eq(1.5)
    end

    it 'can calculate cost for a four day rental' do
      expect(kids.rental_cost(4)).to eq(3.0)
    end

    it 'can calculate cost for a five day rental' do
      expect(kids.rental_cost(5)).to eq(4.5)
    end

    it 'can calculate reward points for a one day rental' do
      expect(kids.reward_points(1)).to eq(1)
    end

    it 'can calculate reward points for a twenty day rental' do
      expect(kids.reward_points(20)).to eq(1)
    end
  end
end
