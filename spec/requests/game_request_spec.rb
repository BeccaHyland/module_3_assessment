require 'rails_helper'

describe "Games API" do
  it "can get one game by its id" do
    # When I send a GET request to “/api/v1/games/1” I receive a JSON response as follows:
    id = create(:game).id

    get "/api/v1/games/#{id}"

    g = JSON.parse(response.body)

    expect(response).to be_successful
    expect(g["id"]).to eq(id)
    expect(g).to eq({
      "game_id":1,
      "scores": [
        {
          "user_id":1,
          "score":15
        },
        {
          "user_id":2,
          "score":16
        }
      ]
    })
  end
end
