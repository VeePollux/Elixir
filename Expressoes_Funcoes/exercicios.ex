defmodule Exercicios do

	def tres_iguais?(a,b,c) do
		a == b && b == c 
	end

# Exercício 1

	def quatro_iguais?(a,b,c,d) do
		a == b && b == c && c == d
	end
	


# Exercício 2	

	def quantos_iguais(a,b,c) do
		cond do
			a == b && b == c -> 3
			a == b || a == c || b == c -> 2
			true -> 0
		end
	end

# Exercício 3

	def todos_diferentes?(a,b,c) do
		a != b && b != c && a != c
	end

# Exercício 4 -> 'n' e 'p' podem ser iguais

# Exercício 5
	
	def quantos_iguais2(a,b,c) do
		cond do
			tres_iguais?(a,b,c) -> 3
			todos_diferentes?(a,b,c) -> 0
			true -> 2
		end
	end
	
# Exercício 6

	def elevado_dois(n), do: n*n

# Exercício 7
	
	def elevado_quatro(n), do: elevado_dois(n)*elevado_dois(n)

# Exercício 8
	
	def palindromo?(palavra) do
		palavra == reverse(palavra)
		end

# Exercício 9
	
	def verifica_triangulo?(a, b, c) do
		((a+b) > c) && ((a+c) > b) && ((b+c) > a)
	
	end
	
# Exercício 10

	def sinal(num) do
		cond do
			num < 0 -> -1
			num == 0 -> 0
			num > 0 -> 1
		end
	end
	
# Exercício 11

	def menor_tres(a, b, c) do
		cond do
			a <= b && a <= c -> a
			b <= c-> b
			true -> c
		end
	end
	
	def menor(x,y) do
		cond do
			x >= y -> y
			y > x -> x
		end
	end
	
	def menor_tres2(a, b, c) do
			menor(menor(a,b), c)

	end

end
