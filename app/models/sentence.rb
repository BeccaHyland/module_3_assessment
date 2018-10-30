class Sentence
  attr_reader :full_sentence,
              :region

  def initialize(data)
    @full_sentence = data[:text]
    @region = data[:regions]
  end
end
