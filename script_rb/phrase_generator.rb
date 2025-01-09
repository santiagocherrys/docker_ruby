
Sujetos = ["El perro", "La tortuga", "Mi amigo", "El Sebas"]
Predicados = ["corre rápido", "es muy sabio", "ama programar", "canta muy mal"]

def mayora_8
    Sujetos.each_with_index{ |sujeto, index|

        if sujeto.length > 8
            Sujetos[index] += " inteligente"
        end
    }
end

def contiene_programar
    Predicados.each_with_index{ |predicado, index|

        if predicado.include? "programar"
            Predicados[index] += "!"
        end
    }
end

def azar_imprimir
    mayora_8
    contiene_programar
    rand_sujeto = rand((Sujetos.size-1))
    rand_predicado = rand((Predicados.size-1))
    puts "La frase es"
    puts "#{Sujetos[rand_sujeto]} #{Predicados[rand_predicado]}"
end

azar_imprimir