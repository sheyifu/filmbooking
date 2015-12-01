class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :reply
      
      t.references :post, index: true
      t.references :user, index: true

      t.timestamps 
    end
  end
end
