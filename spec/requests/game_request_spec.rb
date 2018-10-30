require 'rails_helper'

describe "Games API" do
  it "can get one game by its id" do
    id = create(:game).id

    get "/api/v1/game#{id}"

    g = JSON.parse(response.body)

    expect(response).to be_successful
    expect(g["id"]).to eq(id)
  end
end
