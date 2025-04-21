class CreatePoliticas < ActiveRecord::Migration[8.0]
  def change
    create_table :politicas do |t|
      t.string :titulo
      t.text :conteudo
      t.text :analise

      t.timestamps
    end
  end
end
