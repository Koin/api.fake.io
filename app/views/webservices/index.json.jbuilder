json.array!(@webservices) do |webservice|
  json.extract! webservice, :name, :description
  json.url webservice_url(webservice, format: :json)
end