class Contacto
  attr_accessor :nombre, :fecha_nacimiento, :email, :telefono, :direccion

  def initialize(nombre, fecha_nacimiento, email, telefono, direccion)
    @nombre = nombre
    @fecha_nacimiento = fecha_nacimiento
    @email = email
    @telefono = telefono
    @direccion = direccion
  end
end