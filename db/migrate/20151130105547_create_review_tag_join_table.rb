class CreateReviewTagJoinTable < ActiveRecord::Migration
  def change
  	create_table :reviews_tags, :id => false do |t|
          t.integer :review_id
          t.integer :tag_id
        end
  end
end
