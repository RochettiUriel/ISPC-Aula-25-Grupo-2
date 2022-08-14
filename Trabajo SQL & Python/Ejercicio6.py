

Historial2 = (23500, 5960, 2300, 10200)

total = sum(Historial2)

def calcularGastosGrandes():
    gastosgrandes = 0
    for monto in Historial2:
        if monto > 5000:
            gastosgrandes += 1
 #   print(f"Los gastos superiores a $5000 fueron: {gastosGrandes}")
    print("Los gastos superiores a 5000 son " +str(gastosgrandes))
#print(f"El total de gastos de Frida fue: ${total}")
print("El gasto total fue: " +str(total))
calcularGastosGrandes()