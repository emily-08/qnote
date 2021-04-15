class AddGenresToMemos < ActiveRecord::Migration[6.0]
  def change
    add_reference :memos, :genre, null: false, foreign_key: true
  end
end
