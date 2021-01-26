/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package safo;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import safo.caja.Empleado;
import safo.db.exceptions.IdNotFoundException;
import safo.db.exceptions.WrongCredentialsException;
import safo.salud.Medico;
import safo.salud.Paciente;
import safo.salud.Receta;

/**
 *
 * @author Laxelott
 */
public class main {

    public static void main(String[] args) throws FileNotFoundException, IOException {
        boolean continuar = true;
        Scanner in = new Scanner(System.in);
        String input;

        while (true) {
            if (obtenerEmpleado()) {
                break;
            } else {
                System.out.println("Intente de nuevo...");
            }
        }

        while (continuar) {
            System.out.println("-- FARMACIA --");
            System.out.println("Eliga una opción:");
            System.out.println("1.- Consultar paciente");
            System.out.println("2.- Generar receta");
            System.out.println("3.- Salir");

            input = in.nextLine();

            if (input.length() == 0) {
                input = " ";
            }

            switch (input.charAt(0)) {
                case '1':
                    obtenerPaciente();
                    break;
                case '2':
                    generarReceta();
                    break;
                case '3':
                    continuar = false;
                    break;
                default:
                    System.out.println("Opción inválida!");
                    break;
            }
        }
    }

    /**
     * Pretende inicar sesión de empleado
     *
     * @return si se pudo iniciar sesión
     */
    private static boolean obtenerEmpleado() {
        // Pide id del paciente, y te regresa sus datos
        Scanner in = new Scanner(System.in);
        String username, password;
        Empleado empleado;
        boolean result = false;

        System.out.println("Inserte el nombre de usuario:");
        username = in.nextLine();

        System.out.println("Inserte su contraseña:");
        password = in.nextLine();

        try {
            empleado = new Empleado(username, password.hashCode());

            result = true;
            System.out.println("Credenciales correctas!");
            System.out.println("Nombre: " + empleado.getNombre());

        } catch (WrongCredentialsException ex) {
            System.out.println("Credenciales incorrectas!");
        }

        System.out.println("");
        return result;
    }

    /**
     * Genera una receta de los datos proveídos por el usuario
     */
    private static void generarReceta() {
        try {
            // Pide id del paciente, y te regresa sus datos
            Scanner in = new Scanner(System.in);
            Medico medico = new Medico(3);
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
                    medico.realizarConsulta(new Paciente(2), padecimiento),
                    saludable,
                    medicamentos.toArray(new String[0])
            );
            receta.registrar();

            System.out.println("Receta registrada!");
            System.out.println("");

        } catch (IdNotFoundException ex) {
            Logger.getLogger(main.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Pregunta la id y regresa los datos de un paciente
     */
    private static void obtenerPaciente() {
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

            System.out.println("");

        } catch (IdNotFoundException ex) {
            System.out.println(ex.getMessage());
        }
    }
}
