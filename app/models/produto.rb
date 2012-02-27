class Produto < ActiveRecord::Base
  has_and_belongs_to_many :vendas
end
