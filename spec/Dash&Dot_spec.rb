require './lib/Dash&Dot.rb'
require './lib/Direccion.rb'
require './lib/Mover.rb'
require './lib/Limites.rb'
require './lib/obstaculos.rb'
require './lib/puente.rb'

RSpec.describe "juego de Dash & Dot"do
    
    obstaculos=[["O",3,2],["O",1,2],["O",3,3]]
#direccion
    it "Deberia devolver la direccion" do
        expect(direccion("N", "I")).to eq("O")
    end
    it "Deberia devolver la direccion" do
        expect(direccion("S", "D")).to eq("O")
    end
    it "Deberia devolver la direccion" do
        expect(direccion("O", "I")).to eq("S")
    end
    it "Deberia devolver la direccion" do
        expect(direccion("E", "D")).to eq("S")
    end
#avanzar
    it "Deberia devolver su cordenada x" do
        expect(avanzar_oeste_este(2, "O")).to eq(1)
    end
    it "Deberia devolver su cordenada x" do
        expect(avanzar_oeste_este(2, "E")).to eq(3)
    end
    it "Deberia devolver su cordenada x" do
        expect(avansar_norte_sur(2, "N")).to eq(1)
    end
    it "Deberia devolver su cordenada x" do
        expect(avansar_norte_sur(2, "S")).to eq(3)
    end
#cadenas
    it "Deberia devolver un string dividido en varios" do
        expect(dividir_cadena("5,5-2,2,N-IAIAIADA")).to eq(["5,5","2,2,N","IAIAIADA"])
    end
    #corecciones
    it "Deberia devolver un string dividido en varios 2" do
        expect(dividir_cadena2("5,5\n2,2 N\nIAIAIADA")).to eq(["5,5","2,2 N","IAIAIADA"])
    end
    it "Deberia devolver un string dividido en varios 3" do
        expect(dividir_cadena2("5,5\n2,2 N\nIAIAIADA\n2,3 N\nIAAIAA\nO 3,2\nO 1,2\nO 3,3")).to eq(["5,5","2,2 N","IAIAIADA","2,3 N","IAAIAA","O 3,2","O 1,2","O 3,3"])
    end
    it "Deberia devolver cordenadas de string a int 2" do
        expect(ubicacion2("2,2 N")).to eq([2,2,"N"])
    end
    #corecciones fin
    it "Deberia devolver cordenadas de string a int" do
        expect(ubicacion("2,2,N")).to eq([2,2,"N"])
    end
    it "Deberia devolver tamano de string a int" do
        expect(tamano("5,5")).to eq([5,5])
    end
#limites
    it "Deberia devolver true si esta dentro de los limites" do
        expect(verificarCordenada(2,5)).to eq(true)
    end
    it "Deberia devolver true si esta dentro de los limites" do
        expect(verificarCordenada(-1,5)).to eq(false)
    end
    it "Deberia devolver true si esta dentro de los limites" do
        expect(verificarCordenada(6,5)).to eq(false)
    end
    it "Deberia devolver false si esta dentro de los limites" do
        expect(verificarLimites([2,-1], [5,5])).to eq(false)
    end
    it "Deberia devolver false si esta dentro de los limites" do
        expect(verificarLimites([6,2], [5,5])).to eq(false)
    end
    it "Deberia devolver ubicacion final sin salir de los limites" do
        expect(mover_auto2([5,5],[2,2,"N"],"IAAA",obstaculos)).to eq([2,0,"O"])
    end
    it "Deberia devolver ubicacion final sin salir de los limites" do
        expect(mover_auto2([5,5],[0,0,"E"],"AAA",obstaculos)).to eq([0,3,"E"])
    end
    it "Deberia devolver ubicacion final sin salir de los limites inferior" do
        expect(mover_auto2([5,5],[2,2,"N"],"IAIAAA",obstaculos)).to eq([4,1,"S"])
    end
    it "Deberia devolver ubicacion final sin salir de los limites inferior" do
        expect(mover_auto2([5,5],[4,4,"N"],"AAA",obstaculos)).to eq([1,4,"N"])
    end
#obstaculos
    it "Deberia devolver retroseder un espacio el auto" do
        expect(retroceder([2,2,"N"])).to eq([3,2,"N"])
    end
    it "Deberia devolver retroseder un espacio el auto" do
        expect(retroceder([2,2,"E"])).to eq([2,1,"E"])
    end
#comparar ubicacion
    it "Deberia devolver true si estan en la misma ubicacion" do
        expect(comparar([2,2,"E"],["O",2,2])).to eq(true)
    end
    it "Deberia devolver false si no estan en la misma ubicacion" do
        expect(comparar([4,3,"S"],["O",2,2])).to eq(false)
    end
#verificar obstaculos
    it "Deberia devolver la ubicacion si no se encuentra con un obstaculo" do
        expect(sobreObstaculos([4,3,"S"],[["O",2,2],["O",1,2],["O",3,3]])).to eq([4,3,"S"])
    end
    it "Deberia devolver la ubicacion nueva si se encuentra con un obstaculo" do
        expect(sobreObstaculos([3,3,"S"],[["O",2,2],["O",1,2],["O",3,3]])).to eq([2,3,"S"])
    end
# mover auto
    it "Deberia devolver ubicacion final" do
        expect(mover_auto2([5,5],[2,2,"N"],"IAIAIADA",[["O",3,2],["O",1,2],["O",3,3]])).to eq([4,1,"S"])
    end
    it "Deberia devolver ubicacion final" do
        expect(mover_auto2([5,5],[2,3,"N"],"IAAIAA",[["O",3,2],["O",1,2],["O",3,3]])).to eq([4,1,"S"])
    end
#stringObstaculos
    it "Deberia devolver el obstaculos como arreglo" do
        expect(stringObstaculos("O 3,3")).to eq(["O",3,3])
    end
    it "Deberia devolver el obstaculos como arreglo" do
        expect(convertObstaculos(["O 3,2","O 1,2","O 3,3"])).to eq([["O",3,2],["O",1,2],["O",3,3]])
    end
#puente
    it "Deberia verificar si esta en la subida del puente" do
        expect(verificarPuente([2,2,"N"],[3,1])).to eq(false)
    end
    it "Deberia verificar si esta en la subida del puente" do
        expect(verificarPuente([3,1,"N"],[3,1])).to eq(true)
    end
    it "Deberia cambiar la ubicacion del auto" do
        expect(bajarPuente([2,2,"N"],[3,5])).to eq([3,5,"N"])
    end
    it "Deberia cambiar la ubicacion del auto" do
        expect(bajarPuente([2,2,"N"],[3,1])).to eq([3,1,"N"])
    end
    it "Deberia mover el auto al final del puente" do
        expect(subirPuente([3,1,"N"],["P",[3,1],[3,5]])).to eq([3,5,"N"])
    end
    it "Deberia mover el auto al final del puente" do
        expect(subirPuente([3,5,"N"],["P",[3,1],[3,5]])).to eq([3,1,"N"])
    end
    it "Deberia convertir el string de puente" do
        expect(stringPuente("3,1")).to eq([3,1])
    end
    it "Deberia convertir el string de puente completo" do
        expect(convertPuente("P 3,1 3,5")).to eq(["P",[3,1],[3,5]])
    end
#puentes
    it "Deberia devolver ubicacion final con 1 puente y obstaculos" do
        expect(mover_auto3([5,5],[2,3,"N"],"AAAAD",[["O",3,2],["O",1,2],["O",3,3]],[["P",[3,1],[1,3]]])).to eq([0,1,"E"])
    end
    it "Deberia devolver ubicacion final con 1 puente sin obstaculos" do
        expect(mover_auto3([5,5],[2,3,"N"],"AAAAD",[],[["P",[3,1],[1,3]]])).to eq([0,1,"E"])
    end
    it "Deberia devolver ubicacion final con 1 puente sin obstaculos" do
        expect(mover_auto3([5,5],[2,0,"N"],"AAA",[],[["P",[0,0],[3,3]]])).to eq([2,3,"N"])
    end
# principal
    
    it "Deberia devolver ubicacion final con 2 autos" do
        expect(Dash_Dot2("5,5\n2,2 N\nIAIAIADA\n2,3 N\nIAA\nO 3,2\nO 1,2\nO 3,3")).to eq(["5,5","2,2 N","IAIAIADA","4,1 S","2,3 N","IAA","2,1 O"])
    end
    it "Deberia devolver ubicacion final con 2 autos" do
        expect(Dash_Dot2("5,5\n2,2 N\nIAIAIADA\n2,3 N\nAAI\nO 3,2\nO 1,2\nO 3,3")).to eq(["5,5","2,2 N","IAIAIADA","4,1 S","2,3 N","AAI","0,3 O"])
    end
    it "Deberia devolver ubicacion final chocando autos" do
        expect(Dash_Dot2("5,5\n2,2 N\nIAIAIADA\n2,3 N\nIAAIAA\nO 3,2\nO 1,2\nO 3,3")).to eq(["5,5","2,2 N","IAIAIADA","4,1 S","2,3 N","IAAIAA","3,1 S"])
    end
    it "Deberia devolver ubicacion final chocando autos" do
        expect(Dash_Dot2("5,5\n2,2 N\nIAIAIADA\n2,3 N\nIAAIAA")).to eq(["5,5","2,2 N","IAIAIADA","4,2 S","2,3 N","IAAIAA","4,1 S"])
    end
    it "Deberia devolver ubicacion final sin ingresar obstaculos" do
        expect(Dash_Dot2("5,5\n2,2 N\nIAIAIADA\n2,3 N\nIAAIAAIA")).to eq(["5,5","2,2 N","IAIAIADA","4,2 S","2,3 N","IAAIAAIA","4,1 E"])
    end
    it "Deberia devolver ubicacion final sin ingresar puentes" do
        expect(Dash_Dot3("5,5\n2,2 N\nIAIAIADA\n2,3 N\nIAAIAAIA")).to eq(["5,5","2,2 N","IAIAIADA","4,2 S","2,3 N","IAAIAAIA","4,1 E"])
    end
    it "Deberia devolver ubicacion final CON 2 puentes" do
        expect(Dash_Dot3("5,5\n2,0 N\nAAA\n0,3 E\nAAA\nP 0,0 3,3\nP 0,4 4,0")).to eq(["5,5","2,0 N","AAA","2,3 N","0,3 E","AAA","4,2 E"])
    end
    it "Deberia devolver ubicacion final chocando autos sin obstaculos ni puentes" do
        expect(Dash_Dot3("5,5\n2,2 N\nIAIAIADA\n2,3 N\nIAAIAA")).to eq(["5,5","2,2 N","IAIAIADA","4,2 S","2,3 N","IAAIAA","4,1 S"])
    end
    it "Deberia devolver ubicacion final chocando autos sin obstaculos ni puentes 2" do
        expect(Dash_Dot3("5,5-2,2 N-IAIAIADA-2,3 N-IAAIAA")).to eq(["5,5","2,2 N","IAIAIADA","4,2 S","2,3 N","IAAIAA","4,1 S"])
    end
    it "Deberia devolver ubicacion final chocando autos con obstaculos y puentes" do
        expect(Dash_Dot3("5,5-2,2 N-IAIAIADA-2,3 N-IAAIAAIA-O 3,2-O 1,2-O 3,3-P 0,0 3,3-P 0,4 4,0")).to eq(["5,5","2,2 N","IAIAIADA","4,1 S","2,3 N","IAAIAAIA","3,1 E"])
    end
end
