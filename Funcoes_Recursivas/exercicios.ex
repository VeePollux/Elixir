def module ExerciciosRec do
  def vendas(0), do: 33
  def vendas(1), do: 22
  def vendas(2), do: 18
  def vendas(3), do: 0
  def vendas(4), do: 66
  def vendas(_n), do: 22

#Exercicio 1
def maxi(x, y) when x >= y, do: x
def maxi(x, y) when x < y, do: y

#Exercicio 2

def maior_venda(0), do: vendas(0)
def maior_venda(n), do: maxi(vendas(n), maior_venda(n-1))

#Exercicio 3

def semana_max_venda(0), do: 0
def semana_max_venda(n) do
	cond do
		maior_venda(n) == vendas(n) -> n
		true -> semana_max_venda(n-1)
	end
end

#Exercicio 4 

def zero_vendas(-1 ), do: -1
def zero_vendas(n) do
	cond do
		vendas(n) == 0 -> n
		true -> zero_vendas(n-1)
	end

end

#Exercicio 5
def acha_semana(s, n) when n <0: -1
def acha_semana(s, n) do
	cond do
		vendas(n) == s -> n
		true -> acha_semana(s, n-1)
	end
		
# Exercício 6: chamado o acha_semana com zero
  def zero_vendas2(n), do: acha_semana(0, n)

#Exercicio 7 ******************************

#Exercicio 2

def maior_venda2(m, n) when m == n: vendas(m)
def maior_venda2(m, n), do: maxi(vendas(n), maior_venda2(m, n-1))

#Exercicio 3

def semana_max_venda(m, n) when m == n: m
def semana_max_venda(m, n) do
	cond do
		maior_venda(m, n) == vendas(n) -> n
		true -> semana_max_venda(m, n-1)
	end
end

#Exercicio 4

def zero_vendas(m, n ) when m>n: -1
def zero_vendas(m, n) do
	cond do
		vendas(m, n) == 0 -> n
		true -> zero_vendas(m, n-1)
	end

end

#Exercicio 5
def acha_semana(s, m, n) when m>n: -1
def acha_semana(s, m, n) do
	cond do
		vendas(n) == s -> n
		true -> acha_semana(s, m, n-1)
	end

******************************
#Exercicio 8
def produto(m,n) when m==n: m
def produto(m, n), do: m * produto(m+1, n)

#Exercicio 9

def exponencial(b, p) when p == 0: 1
def exponencial(b, p) do:  b*exponencial(b, p-1)

#Exercicio 10

def fib(0) do: 0
def fib(1) do: 1
def fib(n) do: fib(n-1) + fib(n-2)

end