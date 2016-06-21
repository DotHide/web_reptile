require 'spec_helper'

module WebReptile
  describe WebReptile do
    it 'has a version number' do
      expect(WebReptile::VERSION).not_to be nil
    end

    it 'should return a WebReptile::Core from url method' do
      result = WebReptile.url(TEST_DOMAIN)
      expect(result).to be_an_instance_of(WebReptile::Core)
    end
  end
end
