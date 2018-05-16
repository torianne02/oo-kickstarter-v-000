class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    new_backer = Backer.new(backer)
    new_backer.backed_projects << self
  end
end
