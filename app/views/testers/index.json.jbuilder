json.array!(@testers) do |tester|
  json.extract! tester, :id, :add_time
  json.url tester_url(tester, format: :json)
end
