require './lib/Dash&Dot.rb'
RSpec.describe "juego de Dash & Dot"do
    it "Deberia devolver la ubicacion inicial, final y comandos" do
        expect(Dash_Dot("5,5-2,2,N-IAIAIADA")).to eq("2,2,N-IAIAIADA-4,2,S")#[[],[],[]]
    end
end