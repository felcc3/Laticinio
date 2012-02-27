class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.references :Funcionario
      t.references :Cliente
      t.integer :desconto
      t.float :preco_total

      t.timestamps
    end
    add_index :vendas, :Funcionario_id
    add_index :vendas, :Cliente_id
  end
end
