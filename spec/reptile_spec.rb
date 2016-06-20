require 'spec_helper'

describe Reptile do
  it 'has a version number' do
    expect(Reptile::VERSION).not_to be nil
  end

  it 'should load a page' do
    Reptile.url("http://www.jd.com/allSort.aspx") do |reptile|
      expect(reptile).not_to be nil
    end
  end
end
