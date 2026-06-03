package psoftatv4;

public class Reserva {
    private Livro livro;
    private String emailUsuario;

    public Reserva(Livro livro, String emailUsuario) {
        this.livro = livro;
        this.emailUsuario = emailUsuario;
    }

    public Livro getLivro() {
        return livro;
    }

    public String getEmailUsuario() {
        return emailUsuario;
    }
    
}
 