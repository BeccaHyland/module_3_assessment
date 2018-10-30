require "rails_helper"

describe OxfordService do
  it 'exists' do
    os = OxfordService.new({word: "word"})

    expect(os).to be_a(OxfordService)
  end

  context 'instance methods' do
    context 'sentence search' do
      it 'returns a hash' do
        os = OxfordService.new({word: "word"})

        expect(os.sentence_search).to be_a(Hash)
      end
    end
  end
end
