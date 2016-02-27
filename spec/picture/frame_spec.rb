require 'spec_helper'
require 'picture/frame'

describe Picture::Frame do
  it "#frameWrap" do
    expect(Picture::Frame.frameWrap("hello", 20)).to eq("| | hello        | |")
  end
end
