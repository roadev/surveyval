json.array!(@consumers) do |consumer|
  json.extract! consumer, :id, :consumer_id, :ip_address, :email, :clave
  json.url consumer_url(consumer, format: :json)
end
