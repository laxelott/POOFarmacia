package safo.db.exceptions;

/**
 * Si las credenciales del login fueron incorrectas
 *
 * @author Laxelott
 */
public class WrongCredentialsException extends Exception {

    public WrongCredentialsException(String message) {
        super(message);
    }

}
