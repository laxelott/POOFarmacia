/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo;

import java.util.ArrayList;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import safo.db.exceptions.IdNotFoundException;
import safo.salud.Consulta;
import safo.salud.Medico;
import safo.salud.Paciente;
import safo.salud.Receta;

/**
 *
 * @author Laxelott
 */
public class main {

    public static void main(String[] args) {
        generarReceta();
    }

    private static void generarReceta() {
        try {
            // Pide id del paciente, y te regresa sus datos
            Scanner in = new Scanner(System.in);
            String padecimiento;
            boolean saludable;
            ArrayList<String> medicamentos = new ArrayList();
            String continuar;

            System.out.println("Inserte el padecimiento:");
            padecimiento = in.nextLine();

            while (true) {
                System.out.println("Está saludable el paciente? (s/n)");
                continuar = in.nextLine();

                if (continuar.charAt(0) == 's' || continuar.charAt(0) == 'n') {
                    saludable = continuar.charAt(0) == 's';
                    break;
                } else {
                    System.out.println("Opción incorrecta! Inserte de nuevo...");
                }
            }

            System.out.println("-- Medicamentos recetados --");
            do {
                System.out.println("Inserte el nombre del medicamento:");
                medicamentos.add(in.nextLine());

                System.out.println("Hay más medicamentos? (s/n)");
                continuar = in.nextLine();
            } while (continuar.charAt(0) != 'n');

            Receta receta = new Receta(
                    new Consulta(
                            new Medico(1),
                            new Paciente(3),
                            padecimiento
                    ),
                    false,
                    medicamentos.toArray(new String[0])
            );
            receta.registrar();
            
        } catch (IdNotFoundException ex) {
            Logger.getLogger(main.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private static void preguntarPaciente() {
        // Pide id del paciente, y te regresa sus datos
        Scanner in = new Scanner(System.in);
        int id;
        int limi;
        Paciente paciente;

        System.out.println("Inserte la id del paciente:");
        id = in.nextInt();

        try {
            paciente = new Paciente(id);

            System.out.println("Nombre: " + paciente.getNombre());
            System.out.println("RFC: " + paciente.getRFC());
            System.out.println("Edad: " + paciente.getEdad());
            System.out.println("Peso: " + paciente.getPeso() + "kg");
            System.out.println("Estatura: " + paciente.getEstatura() + "cm");
            System.out.println("Alergias: ");

            limi = paciente.getAlergias().length;
            for (int i = 0; i < limi; i++) {
                System.out.println("\t" + paciente.getAlergias()[i]);
            }

        } catch (IdNotFoundException ex) {
            System.out.println(ex.getMessage());
        }
    }
}