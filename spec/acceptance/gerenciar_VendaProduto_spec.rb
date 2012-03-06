# coding: utf-8

require 'spec_helper'

feature 'gerenciar especialidade' do

  before :each do

  end

  scenario 'incluir especialidade' do

    visit new_especialidade_path

    fill_in 'Descrição', :with => 'Cardiologista'

    click_button 'Salvar'

    page.should have_content 'Descrição: Cardiologista'
  end

  scenario 'alterar especialidade' do #, :javascript => true  do

    especialidade = FactoryGirl.create(:especialidade)	

    visit edit_especialidade_path(especialidade)

    fill_in 'Descrição', :with => 'Cardiologista'

    click_button 'Salvar'

    page.should have_content 'Descrição: Cardiologista'

  end

  scenario 'excluir especialidade' do #, :javascript => true  do

    especialidade = FactoryGirl.create(:especialidade)

    visit especialidades_path

    click_link 'Excluir'
	
    Especialidade.count.should == 0
  end
end
