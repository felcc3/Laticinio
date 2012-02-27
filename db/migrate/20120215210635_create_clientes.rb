class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :rg
      t.string :cpf
      t.string :endereco
      t.string :tel
      t.string :cel
      t.string :status

      t.timestamps
    end
  end
end
