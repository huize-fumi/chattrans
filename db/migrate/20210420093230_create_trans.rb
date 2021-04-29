# frozen_string_literal: true

class CreateTrans < ActiveRecord::Migration[6.0]
  def change
    create_table :trans, &:timestamps
  end
end
