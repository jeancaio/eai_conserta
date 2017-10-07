class AddContatoToFonecedor < ActiveRecord::Migration[5.1]
  def change
    add_column :fonecedors, :contato, :string
  end
end
