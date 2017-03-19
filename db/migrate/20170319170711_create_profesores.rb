class CreateProfesores < ActiveRecord::Migration[5.0]
  def change
    create_table :profesores do |t|
      t.string :nombre
      t.text :disciplina
      t.string :titulo
      t.date :fecha_nac

      t.timestamps
    end
  end
end
