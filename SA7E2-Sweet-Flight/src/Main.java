import java.util.Scanner;

public class Main {
    static final int tamanho =4;

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        int[] aviao = new int[tamanho];
        int[] assentosDisponiveis = new int[tamanho];

        System.out.println("-----SWEET FLIGHT-----");

        for(int i = 0; i < tamanho; i ++){
            System.out.print("Número do avião " + (i+1) + ": ");
            aviao[i] = input.nextInt();
            System.out.print("Quantidade de assentos disponíveis: ");
            assentosDisponiveis[i] = input.nextInt();
        }

        Reserva[] reservas = new Reserva[tamanho];

        System.out.println("\n\n-----SWEET FLIGHT-----");
        System.out.println("-----AVIÕES DISPONIVEIS----- ");

        for (int i = 0; i < tamanho; i++) {
            System.out.println("Avião " + aviao[i] + "| Assentos disponíveis: " + assentosDisponiveis[i]);
        }

        for (int i = 0; i < tamanho; i++) {
            System.out.print("\nDigite o número do avião: ");
            int numeroAviao = input.nextInt();
            input.nextLine();
            System.out.print("Digite o nome do passageiro: ");
            String nomePassageiro = input.nextLine();

            reservas[i] = new Reserva(numeroAviao, nomePassageiro);
        }

        System.out.println("\nReservas Cadastradas:");

        for(Reserva reserva : reservas){
            reserva.listarReserva();
        }
    }
}