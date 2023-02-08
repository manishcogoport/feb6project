class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|

      t.string :title
      t.string :category
      t.string :desc
      t.date :created_date
      t.belongs_to :author, foreign_key: true

      t.timestamps
    end
  end
end
