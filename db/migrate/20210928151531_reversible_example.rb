class ReversibleExample < ActiveRecord::Migration[6.1]
  def change
    reversible do |dir|
      dir.up do
        add_column :authors, :sex, :string
      end

      dir.down do
        remove_column :authors, :sex
      end
    end
  end
end
