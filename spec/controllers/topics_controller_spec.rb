require 'rails_helper'

RSpec.describe TopicsController, :type => :controller do

  before{ get :index }
  describe 'GET index' do
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    context 'gets a list of the topics' do
      describe 'and when there are none' do
        it 'the list is empty' do
          expect(assigns(:topics)).to eq([])
        end
      end

      describe 'and when there are some' do
        it 'the list is comprehensive' do
          topic = Topic.create(title:'foo')
          expect(assigns(:topics)).to eq([topic])
        end
      end
    end
  end
end
