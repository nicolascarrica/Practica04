require 'csv'
require './contacto'

class Agenda
  attr_accessor :contactos

  def initialize(archivo_csv)
    @contactos = []
    @archivo_csv = archivo_csv
    leer_contactos
  end

  def leer_contactos
    CSV.foreach(@archivo_csv, headers: true) do |row|
      @contactos << Contacto.new(
        row['nombre'],
        row['fecha_nacimiento'],
        row['email'],
        row['telefono'],
        row['direccion']
      )
    end
  end

  def guardar_contactos
    CSV.open(@archivo_csv, 'w') do |csv|
      csv << ['nombre', 'fecha_nacimiento', 'email', 'telefono', 'direccion']
      @contactos.each do |contacto|
        csv << [contacto.nombre, contacto.fecha_nacimiento, contacto.email, contacto.telefono, contacto.direccion]
      end
    end
  end


  def ver_contactos
    puts "Contactos:"
    @contactos.each do |contacto|
      puts "Nombre: #{contacto.nombre}"
      puts "Fecha de nacimiento: #{contacto.fecha_nacimiento}"
      puts "Email: #{contacto.email}"
      puts "Teléfono: #{contacto.telefono}"
      puts "Dirección: #{contacto.direccion}"
      puts "-----------------------------"
    end
  end

  def agregar_contacto(nuevo_contacto)
    if @contactos.any? { |contacto| contacto.nombre == nuevo_contacto.nombre }
      puts "Ya existe un contacto con el mismo nombre. No se pudo agregar el contacto."
    else
      @contactos << nuevo_contacto
      guardar_contactos
      puts "Contacto agregado correctamente."
    end
  end
  

  def editar_contacto(nombre, nuevo_contacto)
    indice = @contactos.index { |contacto| contacto.nombre == nombre }
  
    if indice
      @contactos[indice] = nuevo_contacto
      guardar_contactos
      puts "Contacto editado correctamente."
    else
      puts "No se encontró ningún contacto con el nombre '#{nombre}'."
    end
  end

  def buscar_contacto(nombre)
    resultados = @contactos.select { |contacto| contacto.nombre == nombre }
    if resultados.empty?
      puts "No se encontraron contactos con el nombre '#{nombre}'."
    else
      puts "Resultados de búsqueda para '#{nombre}':"
      resultados.each do |contacto|
        puts "Nombre: #{contacto.nombre}"
        puts "Fecha de nacimiento: #{contacto.fecha_nacimiento}"
        puts "Email: #{contacto.email}"
        puts "Teléfono: #{contacto.telefono}"
        puts "Dirección: #{contacto.direccion}"
        puts "-----------------------------"
      end
    end
  end
end
