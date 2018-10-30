class SentenceSearchResult
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def sentences
    @sentences ||= service.sentence_search[:results].first[:lexicalEntries].first[:sentences].map do |sentence_data|
      if sentence_data[:regions].first != "North American"
        Sentence.new(sentence_data)
      end
    end
  end

  private
  def service
    OxfordService.new({word: @word})
  end
end
