require 'spec_helper'

describe "produtos/show" do
  before(:each) do
    @produto = assign(:produto, stub_model(Produto,
      :descricao => "Descricao",
      :preco => "",
      :quantidade_estoque => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descricao/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
