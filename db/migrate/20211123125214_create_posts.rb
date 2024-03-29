class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string     :question_text, null: false
      t.string     :answer_text,   null: false
      t.integer    :subject_id,             null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
