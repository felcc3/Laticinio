require 'spec_helper'

feature 'produto' do
    scenario 'cadastro' do
    visit new_produto_path
    fill_in "Descricao", :with => 'Queijo'
    fill_in "Preco", :with => '1234'
    fill_in "Quantidade estoque", :with => '5678'

    click_button 'Salvar'

    page.should have_content 'Descricao: Queijo'
    page.should have_content 'Preco: 1234'
    page.should have_content 'Quantidade estoque: 5678'
  end
end
