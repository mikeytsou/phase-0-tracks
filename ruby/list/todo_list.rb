# Release 3
class TodoList
    def initialize(list)
    @list = list
  end

  def get_items
    @list
  end

  def add_item(item)
    @list << item
  end

  def delete_item(item)
    @list.delete(item)
  end

  def get_item(index)
    @list[index]
  end
end

# Release 2
=begin
Are there any handy RSpec cheat sheets out there? What observations can you make from skimming them?
-There are plenty of RPpec cheat sheets out there and from observation, the syntax is very similar to Ruby.

Where is the RSpec documentation?
-The RPsec documentation can be found on the web.

What other RSpec matchers are available aside from eq?
-Other RSpec matchers that are available are equality, comparison, predicate, and type matchers just to name a few.

Can you find any free RSpec tutorials or in-depth resources that might be helpful to bookmark?
-There are plenty of RSpec tutorials and resources on the web.
=end