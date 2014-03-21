require "hashtel/version"
require "hashtel/core_ext/string"

module Hashtel
  def self.pastel_color(string)
    return "#FFFFFF" if string == ""

    "##{hashtel_hex_value(string)}".upcase
  end


  # Private methods

  def self.hashtel_hex_value(string)
    # magic numbers that create pretty colors
    # whatevs, sue me (please don't sue me)
    start_color = 92
    total_offset = 156

    [0,
     hashtel_hash_code(string) % total_offset,
     hashtel_hash_code(string.reverse) & total_offset,
     total_offset].sort.each_cons(2).map do |a, b|
       "%02x" % (start_color + b - a)
     end.join
  end
  private_class_method :hashtel_hex_value

  def self.hashtel_hash_code(string)
    return string.ord << 3 if string.length == 1
    string.split("").reduce do |memo, obj|
      hash = ((memo.ord << 3) - memo.ord) + obj.ord
      (hash & hash).abs
    end
  end
  private_class_method :hashtel_hash_code
end
