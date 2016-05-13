class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.user :user_id
      t.post :post_id

      t.timestamps null: false
    end
  end
end
