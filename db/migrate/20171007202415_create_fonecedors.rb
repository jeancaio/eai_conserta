class CreateFonecedors < ActiveRecord::Migration[5.1]
  def change
    create_table :fonecedors do |t|
      t.string :nome
      t.string :tipo_servico
      t.string :endereco
      t.string :descricao

      t.timestamps
    end
  end
end
