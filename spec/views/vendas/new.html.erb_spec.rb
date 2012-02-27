require 'spec_helper'

describe "vendas/new" do
  before(:each) do
    assign(:venda, stub_model(Venda,
      :Funcionario => nil,
      :Cliente => nil,
      :desconto => 1,
      :preco_total => ""
    ).as_new_record)
  end

  it "renders new venda form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vendas_path, :method => "post" do
      assert_select "input#venda_Funcionario", :name => "venda[Funcionario]"
      assert_select "input#venda_Cliente", :name => "venda[Cliente]"
      assert_select "input#venda_desconto", :name => "venda[desconto]"
      assert_select "input#venda_preco_total", :name => "venda[preco_total]"
    end
  end
end
