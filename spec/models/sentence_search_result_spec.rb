require 'rails_helper'

describe SentenceSearchResult do
  it 'exists' do
    ssr = SentenceSearchResult.new("word")

    expect(ssr).to be_a(SentenceSearchResult)
  end
end
