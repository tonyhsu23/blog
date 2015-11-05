class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :response
      t.string :respondent
      t.timestamps null: false
    end
  end
end
