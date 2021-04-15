class CreateMemos < ActiveRecord::Migration[6.0]
  def change
    create_table :memos do |t|
      t.string :title,          null: false
      t.text :text
      t.references :user,        foreign_key: true
      t.references :genre,       foreign_key: true
      t.timestamps
    end
  end
end