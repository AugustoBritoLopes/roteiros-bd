package psoftatv4;

public class Livro {

    private String titulo;
    private String autor;
    private String editora;
    private boolean disponibilidade;
    private int id;

    public Livro(String titulo, String autor, String editora, int id, boolean disponibilidade) {
        this.titulo = titulo;
        this.autor = autor;
        this.editora = editora;
        this.id = id;
        this.disponibilidade = disponibilidade;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getAutor() {
        return autor; 
    }

    public String getEditora() {
        return editora;
    }

    public boolean getDisponibilidade() {
        return disponibilidade;
    }

    public void setDisponibilidade(boolean disponibilidade) {
		this.disponibilidade = disponibilidade;
	}

    public int getId() {
        return id;
    }

	@Override
	public String toString() {
		return "Livro: " + "titulo --> " + titulo + ", disponibilidade --> " + disponibilidade;
	}

}