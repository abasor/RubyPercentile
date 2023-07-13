
def percentile(pct = nil, datos = nil)
    unless pct.nil?
        unless datos.nil?
            if datos.class == Array && datos.size > 0
                #puts "dentro"
                n = pct.class == Fixnum ? pct : pct.to_i # n, percentil 
                if (1..99).include? n
                    d = datos.sort
                    cant = d.length   # cantidad de elementos
                    nk = cant * n * 0.01 - 1
                    #puts nk +1
                    if nk % 1 == 0 # es entero
                        i = nk.to_i 
                        p = d[i]
                        #puts "#{nk} \t \t #{p}"
                    else
                        i = nk.to_i 
                        j = nk.ceil
                        p = (d[j] - d[i])*(nk - i)/(j - i).to_f + d[i]
                        #puts "#{i} \t #{j} \t #{p}"
                    end
                    return p
                end
            end
        end
    end
    return nil
end
#puts percentile(65,[28,31,28,30,28,30,32,35,26,25,29,30,26,28,25,31,31,32,27,30,31,31,25,28])