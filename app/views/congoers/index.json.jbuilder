json.array!(@congoers) do |congoer|
  json.extract! congoer, :id, :description
  json.url congoer_url(congoer, format: :json)
end
