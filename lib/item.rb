class Item
  @@list = []
  # @@list_sort = @@list.sort_by

  attr_accessor :name, :rank

  def initialize(name, rank)
    @name = name
    @rank = rank.to_i
  end

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
  end

  def self.clear()
    @@list = []
  end

  def self.sort()
    @@list.sort_by { |x| x.rank }
  end

end
