#Crear un método llamado nota_mas_alta dentro del 
#archivo calculo_notas.rb que reciba
#un arreglo con el nombre y notas de un alumno y 
#devuelva la nota mas alta.



def notas_mas_alta(alumno) #defino el metodo con el argumento que ingresa el usuario
    data_alumno = alumno.split(',') #creo una variable para darle a mi argumento alumno
    # y transformarlo en un arreglo mediante split
    nombre_alumno = data_alumno[0] #mi variable data alumno comenzará desde el indico primero
    notas_alumno = data_alumno[1..]#mi variable notas, hará que el valor data alumno comience 
    #a buscar desde el indice 1
    nota_max = notas_alumno.max.to_i #asigno una variable nota maximo para darle
    #a notas alumno el maximo de elementos y pasarlo a integer
    return [nombre_alumno, nota_max]# que retorne el nombre del alumno y su nota maxima
end

data = open('notas.data').readlines #abrir el archivo
data.each do |alumno| #busca o hace un ciclo por cada alumno del data que abrí
    print notas_mas_alta(alumno)
end



