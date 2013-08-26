json.array!(@mocks) do |mock|
  json.extract! mock, :word
  json.url mock_url(mock, format: :json)
end