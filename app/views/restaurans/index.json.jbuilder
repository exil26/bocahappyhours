json.array!(@restaurans) do |restauran|
  json.extract! restauran, :id, :name, :address, :phone, :website
  json.url restauran_url(restauran, format: :json)
end
