

def notas_mas_alta(alumnos) #crear el metodo con el argumento que ingresa el usuario
    notas_maximas = [] #mi nuevo arreglo con las notas maximas
    alumnos.each do |alumno|#que haga el ciclo por cada alumno
        data_alumno = alumno.split(',')#pase el string a un arreglo
        nombre_alumno = data_alumno[0]#en el data buscará el nombre del alumno desde indice 2
        notas_alumno = data_alumno[1..]#en el data buscará la nota del alumno desde indice 1
        nota_max = notas_alumno.max.to_i#la nota máxima del alumno de mi elemneto maximo del arreglo
        #y lo pase a integer
        notas_maximas.push(nota_max)#guarde en el arreglo la nota maxima
    end
    notas_maximas
end


data = open('notas.data').readlines #abrir el archivo
print notas_mas_alta(data)

