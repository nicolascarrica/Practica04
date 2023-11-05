require_relative 'agenda'

agenda = Agenda.new('agenda.csv')

# nuevo_contacto = Contacto.new('Carlos', '1990-12-17', 'nicolas@example.com', '123456789', 'Calle 41, La Plata')
# agenda.agregar_contacto(nuevo_contacto)

# Para ver todos los contactos
# agenda.ver_contactos

# Para buscar contacto
# agenda.buscar_contacto('Apo')

# Para editar contacto
nuevo_contacto = Contacto.new('Firenze', '1990-12-17', 'nicolas@example.com', '123456789', 'Calle 41, La Plata')
agenda.editar_contacto('Carlos', nuevo_contacto)
