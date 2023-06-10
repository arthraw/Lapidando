def menu_panel
    p " [1] - Adicionar Cliente"

    p " [2] - Remover Cliente "

    p " [3] - Ver lista dos clientes "

    p " [4] - Sair "
end

def prompt_users

    menu_panel

    option = gets.chomp.to_i

    clientes = [
        { Nome: "", Nivel: "" }
    ]


    while option != 4

        if option == 1
            print "Digite o nome do novo cliente: "
            novo_nome = gets.chomp
            
            print "Digite o Nível do cliente: "
            novo_nivel = gets.chomp

            novo_cliente = { Nome: novo_nome, Nivel: novo_nivel }
            clientes << novo_cliente

            puts "Novo cliente adicionado: #{novo_cliente[:Nome]} - #{novo_cliente[:Nivel]}"
            
            menu_panel

        end
        if option == 2
            puts clientes
            clientes.each_with_index { |cliente, index| puts "#{index + 1}. #{cliente[:Nome]} - #{cliente[:Nivel]}" }

            print "Digite o número do cliente que deseja remover: "
            index_cliente = gets.chomp.to_i - 1

            if index_cliente >= 0 && index_cliente < clientes.length

                cliente_removido = clientes.delete_at(index_cliente)
                puts "O cliente #{cliente_removido[:Nome]} - #{cliente_removido[:Nivel]} foi removido com sucesso."
            else
                puts "Código do cliente inválido."
            end

            menu_panel

        end

        if option == 3
            puts "Lista de clientes:"
            clientes.each { |cliente| puts "#{cliente[:Nome]} - #{cliente[:Nivel]}" }

            menu_panel
        end

        option = gets.chomp.to_i
    end

    if option == 4 
    end

end

prompt_users