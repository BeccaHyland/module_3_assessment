require 'rails_helper'

describe SentenceSearchResult do
  it 'exists' do
    ssr = SentenceSearchResult.new("word")

    expect(ssr).to be_a(SentenceSearchResult)
  end

  context 'instance methods' do
    it 'returns a collection of sentences' do
      ssr = SentenceSearchResult.new("word")

      expect(ssr.sentences).to be_a(Array)
      expect(ssr.sentences.first).to be_a(Sentence)
    end
  end
end
