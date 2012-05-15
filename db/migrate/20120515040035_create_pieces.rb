class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :blurb
      t.text :body
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
