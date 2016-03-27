require_relative 'grid'
require 'chunky_png'

class ColoredGrid < Grid
  def distances=(distances)
    @distances = distances
    farthest, @maximum = distances.max
  end

  def background_color_for(cell)
    distance = @distances[cell] or return nil
    intensity = (@maximum - distance).to_f / @maximum
    
    ChunkyPNG::Color.from_hsl(intensity.to_f * 360, 1, 0.65)
  end

  def background_color_for_bak(cell)
    distance = @distances[cell] or return nil
    intensity = (@maximum - distance).to_f / @maximum
    dark = (255 * intensity).round
    bright =  128 + (127 * intensity).round
    puts "brightness is #{bright}"
    ChunkyPNG::Color.rgb(dark, bright, dark)
  end
end
