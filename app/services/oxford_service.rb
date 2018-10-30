class OxfordService
  def initialize(filter = {})
    @filter = filter
  end

  def sentence_search
    get_json("/api/v1/")
  end

  private

  def conn
    Faraday.new(url: "https://od-api.oxforddictionaries.com") do |faraday|
      faraday.headers["Accept"] = ENV["application/json"]
      faraday.headers["app_id"] = ENV["OXFORD_ID"]
      faraday.headers["app_key"] = ENV["OXFORD_KEY"]
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
end
