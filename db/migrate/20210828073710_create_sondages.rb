class CreateSondages < ActiveRecord::Migration[6.1]
  def change
    create_table :sondages do |t|
      t.integer :q_nbr
      t.integer :w_nbr
      t.integer :p_nbr

      t.timestamps
    end
  end
end
