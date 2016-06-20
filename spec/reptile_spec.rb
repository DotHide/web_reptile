require 'spec_helper'

describe WebReptile do
  it 'has a version number' do
    expect(WebReptile::VERSION).not_to be nil
  end

  it 'should load a page' do
    WebReptile.url("http://www.jd.com/allSort.aspx") do |web|
      expect(web).not_to be nil
    end
  end
end
