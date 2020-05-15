package modelo;

import modelo.bean.Usuario;

public class MiUsuario extends Usuario {
	
	public boolean validar() {
		if(super.getCodigo().length() == 4 && super.getDni().length() == 9) {
			return true;
		}else {
			return false;
		}
	}

}
