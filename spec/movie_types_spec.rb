require 'movie_types'

describe RegularMovie do
  context 'for a regular movie' do
    let(:regular) { RegularMovie.new }
    it 'can calculate cost for a one day rental' do
      expect(regular.get_total(1)).to eq(2.0)
    end

    it 'can calculate cost for a two day rental' do
      expect(regular.get_total(2)).to eq(2.0)
    end

    it 'can calculate cost for a three day rental' do
      expect(regular.get_total(3)).to eq(3.5)
    end

    it 'can calculate cost for a four day rental' do
      expect(regular.get_total(4)).to eq(5)
    end
  end
end

describe NewMovie do
  context 'for a new release movie' do
  let(:new) { NewMovie.new }
    it 'can calculate cost for a one day rental' do
      expect(new.get_total(1)).to eq(3.0)
    end

    it 'can calculate cost for a two day rental' do
      expect(new.get_total(2)).to eq(6.0)
    end
  end
end

describe KidsMovie do
  context 'for a kids movie' do
    let(:kids) { KidsMovie.new }

    it 'can calculate cost for a one day rental' do
      expect(kids.get_total(1)).to eq(1.5)
    end

    it 'can calculate cost for a three day rental' do
      expect(kids.get_total(3)).to eq(1.5)
    end

    it 'can calculate cost for a four day rental' do
      expect(kids.get_total(4)).to eq(3.0)
    end

    it 'can calculate cost for a five day rental' do
      expect(kids.get_total(5)).to eq(4.5)
    end
  end
end
