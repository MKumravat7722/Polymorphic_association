class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.integer :article_id
      t.references :event_id
      t.references :news_id

      t.timestamps
    end
  end
end
