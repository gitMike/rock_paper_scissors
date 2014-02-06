json.array!(@rps) do |rp|
  json.extract! rp, :id
  json.url rp_url(rp, format: :json)
end
