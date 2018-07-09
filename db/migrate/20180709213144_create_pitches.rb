class CreatePitches < ActiveRecord::Migration[5.2]
  def change
    create_table :pitches do |t|
      t.string :title
      t.text :content
      t.integer :student_id

      t.timestamps
    end
  end
end
