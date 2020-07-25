/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dao.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelos.Pedido;


/**
 *
 * @author Edgard
 */
public class PedidoDAO extends Conexion {
    
 
   
    public ArrayList<Pedido> obtenerPedido() throws SQLException{
        String sentencia = "select * from pedido";
        try{
            conectar();
            PreparedStatement ps = obtenerPS(sentencia);
            ResultSet rs = ps.executeQuery();
            ArrayList<Pedido> pedido = new ArrayList();
            while(rs.next()){
                pedido.add(new Pedido(rs.getInt("id")));
            }
            return pedido;
        }catch(Exception e ){
            return new ArrayList();
        }finally{
            desconectar();
        }
    }
}


