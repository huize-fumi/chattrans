# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Room, type: :model do
  describe 'ルーム作成' do
    before do
      # user = FactoryBot.create(:user)
      @room = FactoryBot.build(:room)
    end

    context '作成ができない時' do
      it 'ルーム名が空だと作成できない' do
        @room.title = nil
        @room.valid?
        expect(@room.errors.full_messages).to include("Title can't be blank")
      end
    end
  end
end
