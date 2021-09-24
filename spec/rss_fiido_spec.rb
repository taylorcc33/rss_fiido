# frozen_string_literal: true

RSpec.describe RssFiido do
  it 'has a version number' do
    expect(RssFiido::VERSION).not_to be nil
  end

  describe '#show_feeds' do
    it 'displays rss feed urls' do
      expect(RssFiido::Feed.show_feeds).to eq(['http://www.polygon.com/rss/index.xml',
        'https://kotaku.com/rss',
        'https://www.rockpapershotgun.com/feed/'])
    end
  end
end
