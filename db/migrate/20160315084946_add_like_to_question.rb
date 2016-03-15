class AddLikeToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :like, :integer, default: 0
    add_column :questions, :dislike, :interger, default: 0
  end
end
