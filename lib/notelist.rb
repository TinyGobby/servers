class Notelist
  attr_reader :list

  def initialize
    @list = []
  end

  def add(item)
    @list << item
  end
end
