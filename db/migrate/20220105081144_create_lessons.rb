class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :date
      t.string :time
      t.string :time_zone
      t.text :description

      t.timestamps
    end
  end
end
