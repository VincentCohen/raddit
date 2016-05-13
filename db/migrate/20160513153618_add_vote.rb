class AddVote < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.timestamps null: false

      t.references :user
      t.references :post
    end
  end
end
