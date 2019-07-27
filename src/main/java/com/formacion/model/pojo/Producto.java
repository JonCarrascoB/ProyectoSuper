package com.formacion.model.pojo;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Producto {

	//Atributos
		private int id;
		
		@NotNull
		@Size(min=3, max=100) // minimo 2 letras, max 100
		private String nombre;
		
		private float precio;
		private boolean descuento;
		private int stock;

		// constructores
			public Producto () {
				super();
				this.id = -1;
				this.nombre = "";
				this.precio = 0.00F;
				this.descuento= false;
				this.stock= 0;
			}
			
			
			
		public Producto(int id, String nombre, float precio, boolean descuento, int stock) {
			this();
			this.id = id;
			this.nombre = nombre;
			this.precio = precio;
			this.descuento = descuento;
			this.stock = stock;
		}



			// getters y setters

			public int getId() {
				return id;
			}

			public void setId(int id) {
				this.id = id;
			}

			public String getNombre() {
				return nombre;
			}

			public void setNombre(String nombre) {
				this.nombre = nombre;
			}

			public float getPrecio() {
				return precio;
			}

			public void setPrecio(float precio) {
				this.precio = precio;
			}

			public boolean isDescuento() {
				return descuento;
			}

			public void setDescuento(boolean descuento) {
				this.descuento = descuento;
			}

			public int getStock() {
				return stock;
			}

			public void setStock(int stock) {
				this.stock = stock;
			}


			// funciones
			@Override
			public String toString() {
				return "Producto [id=" + id + ", nombre=" + nombre + ", precio=" + precio + ", descuento=" + descuento
						+ ", stock=" + stock + "]";
			}

			
			
			
			
			
	
	
	
	
	
}
