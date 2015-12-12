json.array!(@funcionarios) do |funcionario|
  json.extract! funcionario, :id, :nome, :email
  json.url funcionario_url(funcionario, format: :json)
end
