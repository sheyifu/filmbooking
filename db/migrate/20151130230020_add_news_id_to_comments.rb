class AddNewsIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :news_id, :string
  end
end
