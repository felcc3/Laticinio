class Venda < ActiveRecord::Base
  belongs_to :Funcionario
  belongs_to :Cliente
  has_and_belongs_to_many :produtos
end
