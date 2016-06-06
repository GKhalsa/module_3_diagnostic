class Station < OpenStruct

  # def self.service
  # end

  def self.search_by_zip(params)
    service = NrailService.new
    service.stations_by_zip({
      location: params,
      format: "json",
      radius: 6,
      fuel_type: "ELEC, LPG"
    })
  end

end
