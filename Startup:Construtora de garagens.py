"Serviços de construção"
Largura_garagem=float(input("Entrar com largura da garagem em metros "))
Profundidade_garagem=float(input("entrar com profundidade da garagem em metros "))

#abaixo , cálculo da área da garagem
Area_garagem= Largura_garagem * Profundidade_garagem

Largura_terreno=float(input("entre com largura do terreno em metros "))
Profundidade_terreno=float(input("entrar com profundidade do terreno em metros "))

#abaixo, Calculo área do terreno
Area_terreno= Largura_terreno * Profundidade_terreno

#agora, cálculo do percentual de ocupação
Percentual = float((Area_garagem)/(Area_terreno)) * 100

print("percentual de ocupação:",Percentual, end=' ')
print("%")
print(" ")
print("Status de disponibilidade:")

#Conclusão de possibiidade de serviço
if Percentual >= 50:
    print("Num rola não chefia")
else:
    print("Deboas fi,ta na fila")

