
def percentile(pct = nil, datos = nil)
    unless pct.nil?
        unless datos.nil?
            if datos.class == Array && datos.size > 0
                #puts "dentro"
                datos_ordenados = datos.sort
                n = pct.class == Fixnum ? pct : pct.to_i
                cant = datos_ordenados.length
                percentil = ( cant * n * 0.01 ).ceil - 1
                puts percentil
                return
            end
        end
    end
    puts "fuera"
end

percentile(1,[10, 20, 30, 40, 50, 60, 70, 80, 90, 100])
percentile(25,[10, 20, 30, 40, 50, 60, 70, 80, 90, 100])
percentile(50,[10, 20, 30, 40, 50, 60, 70, 80, 90, 100])
percentile(75,[10, 20, 30, 40, 50, 60, 70, 80, 90, 100])
percentile(100,[10, 20, 30, 40, 50, 60, 70, 80, 90, 100])