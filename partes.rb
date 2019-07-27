require_relative 'parte'
require 'forwardable'

class Partes
  extend Forwardable
  def_delegators :@partes, :tamanio, :each
  include Enumerable

  def initialize(partes)
    @partes = partes
  end

  def repuestos
    select{|parte| parte.repuesto_necesario}
  end
end