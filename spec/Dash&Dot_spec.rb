require './lib/Dash&Dot.rb'
require './lib/Direccion.rb'
require './lib/Mover.rb'
require './lib/Limites.rb'

RSpec.describe "juego de Dash & Dot"do
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
        expect(mover_auto([5,5],[2,2,"N"],"IAAA")).to eq([2,0,"O"])
    end
    it "Deberia devolver ubicacion final sin salir de los limites inferior" do
        expect(mover_auto([5,5],[2,2,"N"],"IAIAAA")).to eq([4,1,"S"])
    end
#por ver
    it "Deberia devolver ubicacion final" do
        expect(mover_auto([5,5],[2,2,"N"],"IAIAIADA")).to eq([4,2,"S"])
    end
    it "Deberia devolver ubicacion final" do
        expect(Dash_Dot("5,5\n2,2 N\nIAIAIADA")).to eq(["2,2 N","IAIAIADA","4,2 S"])
    end
    it "Deberia devolver ubicacion final" do
        expect(Dash_Dot("5,5-2,2 N-IAIAIADA")).to eq(["2,2 N","IAIAIADA","4,2 S"])
    end
end