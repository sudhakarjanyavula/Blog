class CreatePolymorphicomments < ActiveRecord::Migration[7.0]
  def change
    create_table :polymorphicomments do |t|
      t.text :content
      t.references :commentable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
