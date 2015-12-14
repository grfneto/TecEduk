json.array!(@professors) do |professor|
  json.extract! professor, :id, :nome, :email, :senha, :confirmar_senha
  json.url professor_url(professor, format: :json)
end
