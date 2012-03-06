require 'spec_helper'

describe Venda do
  it "deve pertencer a um funcionario" do
    funcionario = FactoryGirl.create :funcionario
    subject.Funcionario = funcionario
    subject.Funcionario.nome.should == "Jorge"
  end

  it "deve pertencer a um cliente" do
    cliente = FactoryGirl.create :cliente
    subject.Cliente = cliente
    subject.Cliente.nome.should == "Chico"
  end

  it "deve pertencer a varios produtos" do
    produtos = [Factory.create(:produto), Factory.create(:produto)]
    subject.produtos = produtos
    subject.produtos.should == produtos
  end
end
