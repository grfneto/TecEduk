json.array!(@gestors) do |gestor|
  json.extract! gestor, :id, :nome, :email, :senha, :confirmar_senha
  json.url gestor_url(gestor, format: :json)
end
