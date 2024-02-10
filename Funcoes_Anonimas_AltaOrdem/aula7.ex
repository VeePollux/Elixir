defmodule Aula7 do
	def aplica_duas_vezes(f, valor), do: f.(f.(valor))
	
	def iter(f, 1, valor), do: f.(valor)
	def iter(f, repet, valor), do
		cond do 
		repet == 1 -> f.(valor)
		true -> ite
	
	def filter([],f), do: []
	def filter([h|t], f), do: [f.(h)|filter(t,f)]
end
