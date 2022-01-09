class AddUserIdToLessons < ActiveRecord::Migration[6.0]
  def change
    add_reference :lessons, :user, null: false, foreign_key: true
  end
end
