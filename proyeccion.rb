data = open('ventas_base.db').read.chomp.split(',')
def proyeccion_venta1(data)
   suma=[]
    for i in 0..5
        suma.push data[i].to_f
    end
    resultado = suma.sum * 1.1
    "$%0.2f" % resultado    
end

def proyeccion_venta2(data)
suma= []
    for i in 6..11
        suma.push data[i].to_f
    end
    resultado1 = suma.sum * 1.2 
    "$%0.2f" % resultado1    
end
resultado = []
resultado.push proyeccion_venta1(data)
resultado.push proyeccion_venta2(data)

File.write('resultados_data', resultado.join("\n"))
#puts resultado #lo imprimí para yo ver si estaba bien el resultado
