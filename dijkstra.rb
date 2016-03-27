require_relative 'distances_grid'
require_relative 'binary_tree'

grid = DistancesGrid.new(5, 5)
BinaryTree.on(grid)

start = grid[0, 0]
distances = start.distances

grid.distances = distances
puts grid
