# Programa implementación de arbol binario.
#
# Ej: ruby -r "./btree.rb" -e "BTree.test [10,2,5]"
#
# Author::   Alexander Belisario

# Esta clase implementa elementos y operaciones
# de un arbol binario.
class BTree

  attr_accessor :value
   attr_accessor :left
   attr_accessor :right

  #Inicializa instancia de arbol con primer valor
  def initialize(value)
    self.value = value
    @left= nil
    @right = nil
  end
 
  #Agrega un nuevo valor al arbol
  def push(value)
    if self.value < value
      if self.right == nil
        self.right = BTree.new value
      elsif self.right != nil
        self.right.push value
      end
    else
      if self.left == nil
        self.left = BTree.new value
      elsif self.left != nil
        self.left.push value
      end
    end
  end

  #Permite probar la implementación de arbol.
  def self.test(array_values)
    init_val = array_values.at 0
    btree = BTree.new init_val
    array_values.delete_at 0

    array_values.each {|value|
      btree.push value 
    }
    puts btree.inspect
  end

end