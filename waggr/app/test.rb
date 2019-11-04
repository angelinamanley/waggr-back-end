

def get_geo(location)
    geocoder = OpenCage::Geocoder.new(api_key: 'e97fd45d82df45aa92ca259288350373')
    results = geocoder.geocode("SW4 7QN")
    return results

end

results = Geocoder.search("SW4 7QN")
return results 