defmodule Exemplo do
def soma_lista([]) do
    0   
    end
def soma_lista([head|tail]) do
    head + soma_lista(tail)
    end

def quadrado_lista([]) do
    []
end
def quadrado_lista([head|tail]) do
    [head*head | quadrado_lista(tail)]
end

end
