class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :descricao
      t.float :preco
      t.integer :quantidade_estoque

      t.timestamps
    end
  end
end
