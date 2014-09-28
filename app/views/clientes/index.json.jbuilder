json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :idade
  json.url cliente_url(cliente, format: :json)
end
