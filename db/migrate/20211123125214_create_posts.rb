class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :question_text, null: false
      t.string :answer_text,   null: false
      t.text :question_image
      t.text :answer_image
      t.timestamps
    end
  end
end
