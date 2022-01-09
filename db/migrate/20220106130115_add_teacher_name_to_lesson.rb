class AddTeacherNameToLesson < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :teacher_name, :string 
    add_column :lessons, :price, :string 
  end
end
