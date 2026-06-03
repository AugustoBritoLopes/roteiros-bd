package psoftatv4;

import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class TestBiblioteca {
	Biblioteca b = new Biblioteca();
	
	@BeforeEach
	void setUp() throws Exception {
		b = new Biblioteca();
	}

	@Test
	void test() {
		assertEquals("cadastrado", b.cadastrarLivro("Titulo", "Autor2", "a", true));
		assertThrows(IllegalArgumentException.class, ()-> {b.buscarLivroTitulo(null);});
	}

}
