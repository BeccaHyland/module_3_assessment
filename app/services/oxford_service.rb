class OxfordService
  def initialize(filter = {})
    @filter = filter
  end

  def sentence_search
    get_json("/api/v1/")
  end

  private

  def conn
    Faraday.new(url: "https://od-api.oxforddictionaries.com")
  end

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
end
