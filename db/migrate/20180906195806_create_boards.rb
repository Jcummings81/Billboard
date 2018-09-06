class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.string :top_hun_us
      t.string :top_hun_euro
      t.string :top_fif_eng

      t.timestamps
    end
  end
end
