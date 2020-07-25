/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

/**
 *
 * @author Edgard
 */
public class Pedido {
    private long id;
    private Producto producto_id;
    private String descripcion;
    private String correo;
    private Estado estado;

    public Pedido() {
    }

    public Pedido(long id, Producto producto_id,String descripcion,  String correo, Estado estado) {
        this.id = id;
        this.producto_id = producto_id;
        this.descripcion = descripcion;
        this.correo= correo;
      this.estado = estado;
    }

    public Pedido(int aInt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Estado getEstado() {
        return estado;
    }

    public void setEstado(Estado estado) {
        this.estado = estado;
    }

    public Producto getProducto_id() {
        return producto_id;
    }

    public void setProducto_id(Producto producto_id) {
        this.producto_id = producto_id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }
    
    
}
