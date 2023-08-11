class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text       :content
      t.references :prototype
      t.references :user

      t.timestamps
    end
  end
end
