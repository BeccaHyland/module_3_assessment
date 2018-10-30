require "rails_helper"

describe OxfordService do
  it 'exists' do
    os = OxfordService.new({word: "word"})

    expect(os).to be_a(OxfordService)
  end
end
