require_relative 'colored_grid'
require_relative 'binary_tree'

grid = ColoredGrid.new(20, 20)
BinaryTree.on(grid)

start = grid[grid.rows / 2, grid.columns / 2]

grid.distances = start.distances

filename = "colorized.png"
grid.to_png(cell_size: 30).save(filename)
puts "saved to #{filename}"
