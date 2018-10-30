require 'rails_helper'

describe "Games API" do
  it "can get one game by its id" do
    # When I send a GET request to “/api/v1/games/1” I receive a JSON response as follows:
    id = create(:game).id

    get "/api/v1/games/#{id}"

    g = JSON.parse(response.body)

    expect(response).to be_successful
    expect(g["id"]).to eq(id)
  end
end
