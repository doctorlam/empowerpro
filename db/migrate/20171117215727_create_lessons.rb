class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.text :name
      t.text :content
      t.belongs_to :course, foreign_key: true

      t.timestamps
    end
  end
end
