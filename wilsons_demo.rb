require_relative 'grid'
require_relative 'wilsons'

grid = Grid.new(20, 20)
Wilsons.on(grid)

filename = "wilsons.png"
grid.to_png(cell_size: 20).save(filename)
puts "saved to #{filename}"
