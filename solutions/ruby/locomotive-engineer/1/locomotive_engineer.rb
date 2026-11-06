class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagon_ids)
    wagon_ids
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first, second, *array = *each_wagons_id
    loc_id, *wagons = *array, *[first, second]
    fixed_list_of_wagons = loc_id, *missing_wagons, *wagons
    
    fixed_list_of_wagons
  end

  def self.add_missing_stops(from_to, **journey)
    {**from_to, stops: journey.values}
  end

  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end
