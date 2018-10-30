require 'rails_helper'
require './app/models/sentence'

describe Sentence do
  it "exists" do
    data = {}
    s = Sentence.new(data)

    expect(s).to be_a(Sentence)
  end
end
