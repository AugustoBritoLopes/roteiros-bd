package psoftatv4;

//@Entity
public class Usuario {
	//@Id
	//@GenerateValue(strategy = GenerationType.AUTO)
	//private Long id
    private String nome;
    private String email;

    public Usuario(String nome, String email) {
        this.nome = nome;
        this.email = email;
    }

    public String getNome() {
        return nome;
    }

    public String getEmail() {
        return email;
    }
    
}