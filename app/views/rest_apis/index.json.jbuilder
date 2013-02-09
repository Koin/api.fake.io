json.array!(@rest_apis) do |rest_api|
  json.extract! rest_api, :name, :request, :response, :method, :http_status_code, :webservice_id
  json.url rest_api_url(rest_api, format: :json)
end