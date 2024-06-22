def menu()
    puts("----------------------------------")
    puts("========== Calculadora ===========")
    puts("------------ 1 - Soma ------------")
    puts("---------- 2 - Subtração ---------")
    puts("----------- 3 - Divisão ----------")
    puts("------ 4 - Multiplicação ---------")
    puts("------------ 0 - Sair ------------")
    puts("----------------------------------")
end

def limpaTela
    system("clear") || system("cls")
end

def valida_numero(prompt) 

    vermelho = "\e[31m"
    resetcor = "\e[0m"

    print prompt 
    begin
        return gets.chomp.to_i 
    rescue ArgumentError 
    puts "#{vermelho}Por favor, insira um número válido.#{resetcor}" 
        return valida_numero(prompt) 
    end
end

def soma(numero1, numero2)
    soma = numero1 + numero2
    puts "#{numero1} + #{numero2} = #{soma}"
end

def multi(numero1,numero2)
    multi = numero1 * numero2
    puts "#{numero1} * #{numero2} = #{multi}"
end

def subtra(numero1,numero2)
    subtra = numero1 - numero2
    puts "#{numero1} - #{numero2} = #{subtra}"

end

def divisao(numero1,numero2)

    vermelho = "\e[31m"
    resetcor = "\e[0m"

    if numero2 == 0
        puts " #{vermelho}Erro: Divisão por zero #{resetcor}"
    else

    divi = numero1 / numero2
    resto = numero1 % numero2
    puts "#{numero1} / #{numero2} = #{divi}"
    puts "Resto da divisão: #{resto}"
    end
end

