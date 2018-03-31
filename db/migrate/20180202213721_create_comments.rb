class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :username
      t.text :body
      t.references :post, foreign_key: false

      t.timestamps
    end
  end
end
