# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :venda do
    Funcionario nil
    Cliente nil
    desconto 1
    preco_total ""
  end
end
