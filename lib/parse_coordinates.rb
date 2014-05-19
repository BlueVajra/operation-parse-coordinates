class ParseCoordinates
  def initialize(map)
    @coordinates = parse_map(map)
  end

  def coordinates
    @coordinates
  end

  private

  def parse_map(map)
    map_array = map.lines

    map_array.pop
    map_array.shift

    coordinates = []
    line_num = 0
    map_array.each do |line|
      line.strip
      to_delete = line[0]
      new_line = line.gsub(to_delete, "")
      arrayed_line =  new_line.split('')
      x =  arrayed_line.index("X")
      if x != nil
        coordinates = [x,line_num]
      end

      line_num += 1
    end
    coordinates
  end
end