
def percentile(pct = nil, datos = nil)
    unless pct.nil?
        unless datos.nil?
            if datos.class == Array && datos.size > 0
                #puts "dentro"
                datos_ordenados = datos.sort
                n = pct.class == Fixnum ? pct : pct.to_i
                cant = datos_ordenados.length
                idx = ( cant * n * 0.01 ).ceil - 1
                puts datos_ordenados[idx]
                return
            end
        end
    end
    puts "fuera"
end
=begin
percentile(32,[ 3, 5, 2, 7, 6, 4, 9 ])
percentile(85,[ 3, 5, 2, 7, 6, 4, 9 ])
percentile(20,[ 3, 5, 2, 7, 6, 4, 9, 1 ])
percentile(70,[ 3, 5, 2, 7, 6, 4, 9, 1 ])

percentile(75,[5 , 3 , 4 , 5 , 6 , 4 , 5 , 7 , 6 , 4 , 5 , 7 , 3 , 6])
percentile(75,[2 , 2 , 3 , 4 , 4 , 5 , 6 , 8 , 8 , 9 , 10 , 10])

percentile(25,[16, 10, 12, 8, 15, 18, 20, 9, 11, 1, 13, 17, 9, 10, 14])
percentile(50,[16, 10, 12, 8, 15, 18, 20, 9, 11, 1, 13, 17, 9, 10, 14])
percentile(75,[16, 10, 12, 8, 15, 18, 20, 9, 11, 1, 13, 17, 9, 10, 14])
=end

percentile(25,[3,4,4,5,6,7,7,8,8,9,9,10,10,10,10,11,12,13,13,14,16,16,17,18,18,20])
percentile(50,[3,4,4,5,6,7,7,8,8,9,9,10,10,10,10,11,12,13,13,14,16,16,17,18,18,20])
percentile(75,[3,4,4,5,6,7,7,8,8,9,9,10,10,10,10,11,12,13,13,14,16,16,17,18,18,20])