class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :title
      t.integer :article_id
      t.integer :event_id
      t.integer :news_id
      
      t.timestamps
    end
  end
end
