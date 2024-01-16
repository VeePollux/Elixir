defmodule Exercicios do

# Exercício 1

  def mult_dois_lista([]), do: []
  def mult_dois_lista([h | t]) do
    [2 * h | mult_dois_lista(t)]
  end

# Exercício 2

  def tamanho([]), do: 0
  def tamanho([_h | t]) do
    1 + tamanho(t)
  end

# Exercício 3

  def produto_lista([]), do: 1
  def produto_lista([h | t]) do
    h * produto_lista(t)
  end

# Exercício 4

  def and_lista([]), do: true
  def and_lista([h | t]) do
    h && and_lista(t)
  end


# Exercício 5

  def insere_final(x, []), do: [x]
  def insere_final(x, [h | t]) do
      [h | insere_final(x, t)]
  end

# Exercício 6

  def neg_lista([]), do: []
  def neg_lista([h | t]) do
     [!h | neg_lista(t)]
  end

# Exercício 7

  def join([],list2), do: list2
  def join([h | t], list2) do
    [ h | join(t,list2)]
  end

# Exercício 8

  def concat_lista([]), do: []
  def concat_lista([h | t]) do
    join(h, concat_lista(t))
  end

# Exercicio 9

  def inverte_lista([]), do: []
  def inverte_lista([h | t]) do
    join(inverte_lista(t),[h])
  end

end