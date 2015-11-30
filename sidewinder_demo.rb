require_relative 'grid'
require_relative 'sidewinder'

grid = Grid.new(8, 8)
Sidewinder.on(grid)
puts grid
