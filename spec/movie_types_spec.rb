# frozen_string_literal: true

require 'movie_types'

describe RegularMovie do
  context 'given a number of days' do
    def regular(days)
      RegularMovie.new(days)
    end

    it 'can calculate cost for a one day rental' do
      expect(regular(1).rental_cost).to eq(2.0)
    end

    it 'can calculate cost for a two day rental' do
      expect(regular(2).rental_cost).to eq(2.0)
    end

    it 'can calculate cost for a three day rental' do
      expect(regular(3).rental_cost).to eq(3.5)
    end

    it 'can calculate cost for a four day rental' do
      expect(regular(4).rental_cost).to eq(5)
    end

    it 'can calculate reward points for a one day rental' do
      expect(regular(1).reward_points).to eq(1)
    end

    it 'can calculate reward points for a twenty day rental' do
      expect(regular(20).reward_points).to eq(1)
    end
  end
end

describe NewMovie do
  context 'given a number of days' do
    def new(days)
      NewMovie.new(days)
    end

    it 'can calculate cost for a one day rental' do
      expect(new(1).rental_cost).to eq(3.0)
    end

    it 'can calculate cost for a two day rental' do
      expect(new(2).rental_cost).to eq(6.0)
    end

    it 'can calculate reward points for a one day rental' do
      expect(new(1).reward_points).to eq(1)
    end

    it 'can calculate reward points for a two day rental' do
      expect(new(2).reward_points).to eq(2)
    end

    it 'can calculate reward points for a three day rental' do
      expect(new(3).reward_points).to eq(2)
    end
  end
end

describe KidsMovie do
  context 'for a kids movie' do
    def kids(days)
      KidsMovie.new(days)
    end

    it 'can calculate cost for a one day rental' do
      expect(kids(1).rental_cost).to eq(1.5)
    end

    it 'can calculate cost for a three day rental' do
      expect(kids(3).rental_cost).to eq(1.5)
    end

    it 'can calculate cost for a four day rental' do
      expect(kids(4).rental_cost).to eq(3.0)
    end

    it 'can calculate cost for a five day rental' do
      expect(kids(5).rental_cost).to eq(4.5)
    end

    it 'can calculate reward points for a one day rental' do
      expect(kids(1).reward_points).to eq(1)
    end

    it 'can calculate reward points for a twenty day rental' do
      expect(kids(20).reward_points).to eq(1)
    end
  end
end
