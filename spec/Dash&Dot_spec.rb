require './lib/Dash&Dot.rb'
require './lib/Direccion.rb'
require './lib/Mover.rb'
require './lib/Limites.rb'
require './lib/obstaculos.rb'

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
        expect(mover_auto([5,5],[2,2,"N"],"IAAA",obstaculos)).to eq([2,0,"O"])
    end
    it "Deberia devolver ubicacion final sin salir de los limites inferior" do
        expect(mover_auto([5,5],[2,2,"N"],"IAIAAA",obstaculos)).to eq([4,1,"S"])
    end
#obstaculos
    it "Deberia devolver retroceder un espacio el auto" do
        expect(retroceder([2,2,"N"])).to eq([3,2,"N"])
    end
    it "Deberia devolver retroceder un espacio el auto" do
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
        expect(mover_auto([5,5],[2,2,"N"],"IAIAIADA",[["O",3,2],["O",1,2],["O",3,3]])).to eq([4,1,"S"])
    end

# principal
    # it "Deberia devolver ubicacion final" do
    #     expect(Dash_Dot("5,5\n2,2 N\nIAIAIADA")).to eq(["2,2 N","IAIAIADA","4,2 S"])
    # end
    # it "Deberia devolver ubicacion final" do
    #     expect(Dash_Dot("5,5-2,2 N-IAIAIADA")).to eq(["2,2 N","IAIAIADA","4,2 S"])
    # end
end