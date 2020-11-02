#Crear el programa proyecciones.rb además tendremos un archivo 
#con las proyecciones de venta de cada mes del próximo año. 
#Este archivo debe llamarse ventas_base.db y estar en el misma
#carpeta de trabajo que el código. 

#Las ventas totales dado que en la primera mitad del semestre se vende un 10% más.
#Las ventas totales dado que en la segunda mitad del semestre se vende un 20% más.

#El resultado debe ser presentado un archivo llamado resultados.data.
#Los datos deben contener máximo 2 decimales y estar cada uno en una sola línea.

print "\n"
def  simulaciones(data, factor)#defino mi metodo con dos argumentos data y factor
    filtered = [] #mi arreglo vacío o contenedor
    data.each do |ventas|#en el data o archivo buscará las ventas
        filtered.push(ventas*factor)#lo guardará en el nuevo arreglo
        #las ventas con el porcentaje
    end
    return filtered #retorna el nuevo arreglo
end

data = open('ventas_base.db').read #abro el archivo
data = data.split(',')#mi data o archivo lo paso a un arreglo 
data.map! { |ele| ele.to_i} #cada elementos del data se pasan a integer

primera_mitad = simulaciones(data[0..5], 1.1)
#el 10% del primer semestre de las ventas del data iniciendado del indice 0
segunda_mitad = simulaciones(data[6..11], 1.2)
#el 20% del segundo semestre, las ventas del data iniciando desde el indice 6
print primera_mitad
print segunda_mitad

semestre = primera_mitad + segunda_mitad 
#creo una variable semestre, para sumar ambos resultados primer semestre y segundo
semestre_string = semestre.join("\n")
#despues otra variable para acordarme que semestre le aplico el join 
File.write('resultados_data', semestre_string)
#guardo el nuevo arreglo en el archivo que se indica resultados data

