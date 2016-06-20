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

  it 'should get web links from the page' do
    WebReptile.url("http://www.jd.com/allSort.aspx") do |web|
      expect(web.links.length).to be(133)
    end
  end

  it 'should get link item details (href & text)' do
    WebReptile.url("http://www.jd.com/allSort.aspx") do |web|
      items = web.grab(".category-items .category-item .items dt a")
      expect(items.first.attr('text')).to be "电子书刊"
    end
  end
end
