require 'spec_helper'

describe "produtos/new" do
  before(:each) do
    assign(:produto, stub_model(Produto,
      :descricao => "MyString",
      :preco => "",
      :quantidade_estoque => 1
    ).as_new_record)
  end

  it "renders new produto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => produtos_path, :method => "post" do
      assert_select "input#produto_descricao", :name => "produto[descricao]"
      assert_select "input#produto_preco", :name => "produto[preco]"
      assert_select "input#produto_quantidade_estoque", :name => "produto[quantidade_estoque]"
    end
  end
end
