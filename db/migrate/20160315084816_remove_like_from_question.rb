class RemoveLikeFromQuestion < ActiveRecord::Migration
  def change
    remove_column :questions, :like, :integer
    remove_column :questions, :dislike, :interger
  end
end
