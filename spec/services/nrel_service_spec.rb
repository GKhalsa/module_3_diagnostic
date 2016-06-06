# require "rails_helper"
#
#   describe NrelService do
#     it "returns a list of fuel stations by zip code" do
#       # VCR.use_cassette("nrel_service#stations") do
#         service = NrelService.new
#
#         stations = service.stations_by_zip({
#           location: "80203",
#           format: "json",
#           radius: 6,
#           fuel_type: "ELEC, LPG"
#         })
#
#         station = stations.first
#
#        expect(stations.count).to eq(20)
#        expect(station[:station_name]).to eq("UDR")
#        expect(station[:street_address]).to eq("800 Acoma St")
#        expect(station[:fuel_type_code]).to eq("ELEC")
#        expect(station[:distance]).to eq(0.3117)
#        expect(station[:access_days_time]).to eq("24 hours daily")
#       end
#     # end
#   end
