require "hashtel"

HEX_COLOR_MAX_INTEGER = 16777215

describe String do
  describe ".pastel_color" do
    it "returns a valid hex color" do
      random_string = (0...rand(50)).map { ("a".."z").to_a[rand(26)] }.join
      expect(hex_value(random_string)).to be_between(0, HEX_COLOR_MAX_INTEGER)
    end

    it "returns white for empty strings" do
      expect("".pastel_color).to eq("#FFFFFF")
    end

    it "works on single character strings" do
      expect(hex_value("a".pastel_color)).to be_between(0, HEX_COLOR_MAX_INTEGER)
    end
  end

  def hex_value(string)
    string[1..-1].hex
  end
end
