# frozen_string_literal: true

RSpec.describe RssFiido do
  it 'has a version number' do
    expect(RssFiido::VERSION).not_to be nil
  end

  describe '.grab_feed' do
    it 'grabs a url' do
      expect(RssFiido.grab_feed).to eql('http://www.polygon.com/rss/index.xml')
    end
  end
end
