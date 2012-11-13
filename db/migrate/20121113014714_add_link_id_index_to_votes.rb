class AddLinkIdIndexToVotes < ActiveRecord::Migration
  def change
    add_index :votes, :link_id
    add_index :votes, :user_id
  end
end
