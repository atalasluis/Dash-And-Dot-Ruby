require './lib/Dash&Dot.rb'
RSpec.describe "juego de Dash & Dot"do
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
    it "Deberia devolver un string dividido en varios" do
        expect(div("5,5-2,2,N-IAIAIADA")).to eq(["5,5","2,2,N","IAIAIADA"])
    end
    it "Deberia devolver cordenadas de string a int" do
        expect(ubic("2,2,N")).to eq([2,2,"N"])
    end
    it "Deberia devolver tamano de string a int" do
        expect(tam("5,5")).to eq([5,5])
    end
    #it "Deberia devolver la ubicacion inicial, final y comandos" do
    #    expect(Dash_Dot("5,5-2,2,N-IAIAIADA")).to eq("2,2,N-IAIAIADA-4,2,S")#[[],[],[]]
    #end
end