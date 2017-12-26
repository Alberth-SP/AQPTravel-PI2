package com.example.dao;
import java.util.List;
import com.example.logic.Agencia;
import com.example.logic.Customer;
import com.example.logic.FotosPaquete;
import com.example.logic.Pago;
import com.example.logic.Paquete;

public interface ReporteDao {
	
	public void mostrarVentas(Customer cus, Paquete paq, Agencia ag, Pago pag);
	public void mostrarAgenciasClientes(Customer cus,Agencia ag);
}

