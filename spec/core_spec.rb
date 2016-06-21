require 'spec_helper'

module WebReptile
  describe WebReptile::Core do
    it "should grab elements from a domain by using css selector" do
      domain = WebReptile.url(TEST_DOMAIN)
      items = domain.grab(".category-items .category-item .items dt a")
      expect(items.length).to be 133
      expect(items.first.text).to eq '电子书刊'
      expect(items.first.attr('href')).to eq "//e.jd.com/ebook.html"
    end
  end
end
