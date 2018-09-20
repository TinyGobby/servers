require 'notelist'

describe Notelist do
  describe '#list' do
    it 'initializes with a readable empty array' do
      test = Notelist.new
      expect(test.list).to eq []
    end
  end

  describe '#add' do
    it 'adds to an array' do
      subject.add('test1')
      expect(subject.list).to eq ['test1']
    end
  end
end
