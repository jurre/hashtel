class String
  def pastel_color
    return "#FFFFFF" if self == ""

    # magic numbers that create pretty colors
    # whatevs, sue me (please don't sue me)
    hex_value = hashtel_hex_value(92, 156)

    "##{hex_value}".upcase
  end

  protected

  def hashtel_hex_value(start_color, total_offset)
    [0,
     self.hashtel_hash_code % total_offset,
     self.reverse.hashtel_hash_code & total_offset,
     total_offset].sort.each_cons(2).map do |a, b|
       "%02x" % (start_color + b - a)
     end.join
  end

  def hashtel_hash_code
    return self.ord << 3 if self.length == 1
    self.split("").reduce do |memo, obj|
      hash = ((memo.ord << 3) - memo.ord) + obj.ord
      (hash & hash).abs
    end
  end
end
