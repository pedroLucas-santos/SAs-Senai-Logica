public class Reserva {
    int numeroAviao;
    String nomePassageiro;

    public Reserva(int numeroAviao, String nomePassageiro){
        this.numeroAviao = numeroAviao;
        this.nomePassageiro = nomePassageiro;
    }

    public void setNomePassageiro(String nomePassageiro) {
        this.nomePassageiro = nomePassageiro;
    }

    public void setNumeroAviao(int numeroAviao) {
        this.numeroAviao = numeroAviao;
    }

    public int getNumeroAviao() {
        return numeroAviao;
    }

    public String getNomePassageiro() {
        return nomePassageiro;
    }

    public void listarReserva(){
        System.out.println("Avião: " + numeroAviao + "| Passageiro: " + nomePassageiro);
    }
}
