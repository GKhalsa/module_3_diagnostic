class NrailService


  def initialize
    @_connection = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1")
    @_connection.params["api_key"] = ENV['NRAIL_KEY']
  end

  def stations_by_zip(params)
    
  end

  private

    def connection
      @_connection
    end

    def parse(response)
      JSON.parse(response.body, symbolize_names: true )
    end

end

  # results = JSON.parse(response(params).body, symbolize_names: true)[:results]
