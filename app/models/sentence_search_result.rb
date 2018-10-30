class SentenceSearchResult
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def sentences
    @sentences ||= service.sentence_search.map do |sentence_data|
      Sentence.new(sentence_data)
    end
  end

  private
  def service
    OxfordService.new({word: @word})
  end
end
