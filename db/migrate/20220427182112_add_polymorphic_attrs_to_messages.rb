class AddPolymorphicAttrsToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :messagetable_type, :string
    add_column :messages, :messagetable_id, :string
    remove_column :messages, :article_id, :integer
    remove_column :messages, :event_id, :integer
    remove_column :messages, :news_id, :integer

  end
end
