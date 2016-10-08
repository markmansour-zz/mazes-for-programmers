require_relative 'grid'
require_relative 'colored_grid'
require_relative 'aldous_broder'

grid = ColoredGrid.new(40, 40)
AldousBroder.on(grid)

start = grid[grid.rows / 2, grid.columns / 2]

grid.distances = start.distances

filename = "aldous_broder.png"
grid.to_png.save(filename)
puts "saved to #{filename}"


