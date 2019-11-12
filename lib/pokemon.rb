
class Pokemon
  attr_accessor :id, :name, :type, :db 
  
  
  def initialize (id:, name:, type:, db:)
    self.id = id
    self.name = name
    self.type = type
    self.db = db
end

def self.save(name, type, db)
  
  db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  
end

def self.find(id, db) 
  new_pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?;" id)
  Pokemon.new(id: new_pokemon[0], name: new_pokemon [1], type)
end
end