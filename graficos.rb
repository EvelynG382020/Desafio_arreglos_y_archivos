def chart(array)# defino mi metodo
    max = array.max #creo una variable para indicar los elementos
    #maximo de mi arreglo
    patron = "-" * max*2 #creo una variable llamada patron para 
    #acordarme lo que haré, indico que el guión lo múltiplico por el
    #máximo de mis elementos y por 2
    array.each do |element|
        asterisco = "*" * element*2# a cada elemnento de mi arreglo
        #lo duplicaré y pondré asterisco
        puts "|#{asterisco}" 
    end
    puts ">#{patron}"
     #el signo mayor y luego el patro la variable
    #que indiqué arriba con el patron a repetir.
end

