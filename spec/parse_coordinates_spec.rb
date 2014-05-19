require 'spec_helper'
require 'parse_coordinates'

describe "parse coordinates" do
  it "parses a map to give coordinates" do
    map = <<-INPUT
+==+
|X*|
|**|
+==+
INPUT



    actual = ParseCoordinates.new(map).coordinates
    expected = [0,0]
    expect(actual).to eq expected

  end
end