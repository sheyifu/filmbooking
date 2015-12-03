class AddMovieTitleToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :movie_title, :string
    
  end
end
