class CreateCommentTagJoinTable < ActiveRecord::Migration
  def change
        create_table :comments_tags, :id => false do |t|
          t.integer :comment_id
          t.integer :tag_id
        end
      end
    end 

