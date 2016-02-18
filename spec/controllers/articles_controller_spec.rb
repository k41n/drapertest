require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  let!(:article) { create(:article) }

  it 'shows decorated article' do
    get :show, { id: 1 }
    expect(assigns(:article)).to be_decorated
    expect(assigns(:article)).to be_decorated_with ArticleDecorator
  end
end
