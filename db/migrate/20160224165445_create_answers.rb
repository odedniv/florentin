class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :question, index: true, foreign_key: { on_delete: :cascade }, null: false
      t.float :latitude
      t.float :longitude
      t.string :content

      t.timestamps null: false
    end
  end
end
