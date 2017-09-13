class Item
  @@list = []
  @@list_of_rank =[]
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

  def save_rank()
    @@list_of_rank.push([self.rank,self.name])
    # @@list_of_rank.push(self[0].rank)
    # @@list_of_rank.push(self[1].rank)
  end

  def self.all_rank()
    @@list_of_rank
  end

  def self.sort()
    # @@list.rank.sort_by { |x| x.rank }
    @@list.rank { |x| x.sort_by }
  end

end
