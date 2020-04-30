package modelo.util;

import java.util.Comparator;

import modelo.bean.Usuario;

public class DniComparator implements Comparator<Usuario> {

	@Override
	public int compare(Usuario u1, Usuario u2) {
		return u1.getDni().compareTo(u2.getDni());
	}

}
