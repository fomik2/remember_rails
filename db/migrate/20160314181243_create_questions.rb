class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.string :text
      t.integer :like, default: 0
      t.integer :dislike, default: 0

      t.timestamps null: false
    end
  end
end
