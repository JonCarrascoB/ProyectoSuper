package com.formacion.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.formacion.model.ConnectionManager;
import com.formacion.model.dao.ProductsDAO;
import com.formacion.model.pojo.Producto;


public class ProductsDAO {

private static ProductsDAO INSTANCE = null;
	
	private ProductsDAO() {
		super();
	}
	
	public static ProductsDAO getInstance() {
		if (INSTANCE == null) {
			INSTANCE = new ProductsDAO();
		}
		return INSTANCE;
	}

	public ArrayList<Producto> getAll() {
		
		ArrayList<Producto> lista = new ArrayList<Producto>();
		String sql = "SELECT id, nombre, precio, descuento, stock FROM products ORDER BY id DESC LIMIT 500";

		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pst = con.prepareStatement(sql);
				ResultSet rs = pst.executeQuery()) {

			while (rs.next()) {
				lista.add(mapper(rs));
			}
		} catch (Exception e) {

			e.printStackTrace();
		}
		return lista;
	}

	public static Producto getById(int id) {
		Producto producto = new Producto();
		String sql = "SELECT id, nombre, precio, descuento, stock FROM products WHERE id = ?;";
		try (Connection con = ConnectionManager.getConnection(); 
				PreparedStatement pst = con.prepareStatement(sql)) {

			//sustituye el primer ? por la variable id
			pst.setInt(1, id);
			try (ResultSet rs = pst.executeQuery()) {
				if (rs.next()) {
					producto = mapper(rs);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return producto;
	}
	

	public ArrayList<Producto> getByName(String search) {
		ArrayList<Producto> lista = new ArrayList<Producto>();
		String sql = "SELECT id, nombre FROM products WHERE nombre LIKE ? ORDER BY id DESC LIMIT 500;";
		try (Connection con = ConnectionManager.getConnection();
				PreparedStatement pst = con.prepareStatement(sql)) {
			pst.setString(1, "%" + search + "%");
			try (ResultSet rs = pst.executeQuery()) {
				while (rs.next()) {
					lista.add(mapper(rs));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
	}
	
	public boolean modificar(Producto producto) throws Exception {
		boolean resultado = false;
		String sql = "UPDATE products SET nombre= ?, precio= ?, descuento=?, stock=? WHERE  id = ?;";
		try (Connection con = ConnectionManager.getConnection(); 
			 PreparedStatement pst = con.prepareStatement(sql)) {
			
			pst.setString(1, producto.getNombre());
			pst.setFloat(2, producto.getPrecio());
			pst.setBoolean(3, producto.isDescuento());
			pst.setInt(4, producto.getStock());
			pst.setInt(5, producto.getId());
			
			int affectedRows = pst.executeUpdate(); //esto siempre cuando se hacen insert, delete o update
			if (affectedRows == 1) {
				resultado = true;
			}
		}
		return resultado;
	}
	
	public boolean crear(Producto producto) throws Exception {
		boolean resultado = false;
		String sql = "INSERT INTO products (nombre, precio, descuento, stock) VALUES (?, ?, ?, ?);";
		try (Connection con = ConnectionManager.getConnection(); 
			 PreparedStatement pst = con.prepareStatement(sql)) {
			
			pst.setString(1, producto.getNombre());
			pst.setFloat(2, producto.getPrecio());
			pst.setBoolean(3, producto.isDescuento());
			pst.setFloat(4, producto.getStock());
			
			int affectedRows = pst.executeUpdate(); //esto siempre cuando se hacen insert, delete o update
			if (affectedRows == 1) {
				resultado = true;
			}
		}
		return resultado;
	}
	
	public boolean delete(int id) {
		boolean resultado = false;
		String sql = "DELETE FROM products WHERE  id= ?;";
		try (Connection con = ConnectionManager.getConnection();
			 PreparedStatement pst = con.prepareStatement(sql);) {
			
			pst.setInt(1, id);
			int affetedRows = pst.executeUpdate();
			if (affetedRows == 1) {
				resultado = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultado;
	}
	
	public static Producto mapper(ResultSet rs) throws SQLException {
		Producto p = new Producto();
		p.setId(rs.getInt("id"));
		p.setNombre(rs.getString("nombre"));
		p.setPrecio(rs.getFloat("precio"));
		p.setDescuento(rs.getBoolean("descuento"));
		p.setStock(rs.getInt("stock"));
		return p;
	}
	
	
	
	
}
