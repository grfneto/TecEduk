json.array!(@apoio_educacioanls) do |apoio_educacioanl|
  json.extract! apoio_educacioanl, :id, :nome, :email, :senha, :confirmar_senha
  json.url apoio_educacioanl_url(apoio_educacioanl, format: :json)
end
