json.extract! cliente, :id, :nome, :cpf_cnpj, :endereco, :telefone, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
