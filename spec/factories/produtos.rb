# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :produto do
    descricao "MyString"
    preco ""
    quantidade_estoque 1
  end
end
