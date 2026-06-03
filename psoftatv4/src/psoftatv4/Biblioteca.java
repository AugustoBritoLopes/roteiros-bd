package psoftatv4;

import java.util.*;

public class Biblioteca {
    private List<Livro> livros;
    private List<Usuario> usuarios;
    private List<Reserva> reservas;
    private int livroIdCounter;

    public Biblioteca() {
        this.livros = new ArrayList<>();
        this.usuarios = new ArrayList<>();
        this.reservas = new ArrayList<>();
        this.livroIdCounter = 1; 
    }


    public String cadastrarLivro(String titulo, String autor, String editora, boolean disponibilidade) {
		this.livros.add(new Livro(titulo, autor, editora, livroIdCounter, disponibilidade));
		this.livroIdCounter++;
		return "cadastrado";
	}

	public void cadastrarUsuario(String nome, String userEmail) {
		this.usuarios.add(new Usuario(nome, userEmail));
	}

	public List<Livro> listarLivros() {
		List<Livro> resultado = new ArrayList<>();
		for (Livro livro : livros) {
			resultado.add(new Livro(livro.getTitulo(), livro.getAutor(), livro.getEditora(), livro.getId(), livro.getDisponibilidade()));
		}
		if (resultado.size() == 0) {
			throw new IllegalArgumentException("NÃO HÁ LIVROS");
		}
		return resultado;
	}
	
	public void limparLivros() {
	    this.livros.clear();
	}

	
	public List<Livro> listarLivrosDisponiveis() {
		List<Livro> resultado = new ArrayList<>();
		for (Livro livro : livros) {
			if (livro.getDisponibilidade()) {
				resultado.add(new Livro(livro.getTitulo(), livro.getAutor(), livro.getEditora(), livro.getId(), livro.getDisponibilidade()));
			}
		}if (resultado.size() == 0) {
			throw new IllegalArgumentException("NÃO HÁ LIVROS DISPONÍVEIS");		
		}
		return resultado;
	}

	public String buscarLivroTitulo(String titulo) {
		for (Livro livro : livros) {
			if (livro.getTitulo().equals(titulo)) {
				return livro.toString();
			}
		}
		return "NÃO HÁ ESSE LIVRO";
	}


	
	public String buscarLivroTituloParcial(String tituloParcial) {
	    StringBuilder resultado = new StringBuilder();

	    for (Livro livro : livros) {
	        String[] palavras = livro.getTitulo().split(" ");
	        for (String palavra : palavras) {
	            if (palavra.equalsIgnoreCase(tituloParcial)) {
	                resultado.append(livro.toString()).append("\n");
	                break;
	            }
	        }
	    }

	    if (resultado.length() == 0) {
	        return "NÃO HÁ ESSE LIVRO";
	    }

	    return resultado.toString().trim(); 
	}

	

	public String reservarLivro(int idLivro, String userEmail) {
		if (idLivro > this.livroIdCounter || idLivro < 1) {
			return "LIVRO INEXISTENTE";
		}

		Livro livro = null;
		for (Livro l : livros) {
			if (l.getId() == idLivro) {
				livro = l;
				break;
			}
		}
		
		if (livro == null)
			return "LIVRO INEXISTENTE";

		if (!livro.getDisponibilidade()) {
			return "LIVRO INDISPONIVEL";
		}
		
		boolean usuarioExiste = false;
		
		for (Usuario user : usuarios) {
		    if (user.getEmail().equals(userEmail)) {
		        usuarioExiste = true;
		        break;
		    }
		}

		if (!usuarioExiste) {
		    return "USUARIO INEXISTENTE";
		}		
		
		livro.setDisponibilidade(false);
		reservas.add(new Reserva(livro, userEmail));

		return "LIVRO RESERVADO";
	}
	
	public List<Livro> getLivros() {
	    return this.livros;
	}

}


