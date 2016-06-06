class Station < OpenStruct

  def self.service
    NrelService.new
  end

  def self.search_by_zip(params)
    stations_array_hash = service.stations_by_zip({
      location: params,
      format: "json",
      radius: 6,
      fuel_type: "ELEC, LPG"
    })

    stations_array_hash.map {|station| Station.new(station)}
  end

end
