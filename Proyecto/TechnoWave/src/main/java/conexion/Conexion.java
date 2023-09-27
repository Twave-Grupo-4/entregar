/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author saust
 */
public class Conexion {
    String bd = "t_wave";
    String url = "jdbc:mysql://localhost/";
    String user = "root";
    String password = "";
    //String url = "jdbc:mysql://localhost:3306/";
    /*hay dos maneras de escribir el driver, con el .cj. o sin el .cj.*/
    /*String driver = "com.mysql.cj.jdbc.Driver";*/
    String driver = "com.mysql.cj.jdbc.Driver";
    
    Connection cx = null;
    
    public Conexion(){
        
    }
    
    //Realizar la conexion entre los archivos JSP y la Base de Datos:
    //      -Para realizar dicha conexión hay que insertar codigo java en el jsp con "<% %>"
    //      -Dentro de ese codigo hay que crear un Objeto a partir de la clase "Conexion"
    //      -Ahora, del objeto Conexion hay que llamar al metodo conectar. LISTO!
//      - Dentro del objeto de la Clase Conexion, hay distintos metodos que interactuan con la Base de Datos y sus registros.
    public Connection conectar(){
        //Connection cx = null;
        try {
            Class.forName(driver);
            cx = DriverManager.getConnection(url+bd,user,password);
            System.out.println("Sí se conectó correctamente a la Base de Datos " + bd);
        } catch (ClassNotFoundException |SQLException ex) {
            System.out.println("No se conectó a la Base de Datos " + bd);
            //Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cx;
    }
    
    
    //mostrar registros
    public ResultSet registrosMostrar(String tabla, String seccion, String busqueda){
        //Connection cx = null;
        try {
            Statement st = cx.createStatement();
            String consulta = "SELECT * FROM " + tabla + " WHERE " + seccion + " = '" + busqueda + "'";
          //String consulta = "SELECT * FROM " + tabla + " WHERE " + seccion + " = " + busqueda + ";"
            ResultSet rs = st.executeQuery(consulta);
            
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public Exception eliminarUsuario(String id){
        try {
                //se llama al Driver JDBC
                Class.forName(driver);
                //se crea la coneccion con la Base de Datos elegida
                Connection con = null;
                con = DriverManager.getConnection(url+bd,user,password);
                
                //se ejecuta la sentencia update con el id ingresado
                String update = "DELETE FROM usuario WHERE id_usuario='"+id+"';";
                Statement st = con.createStatement();
                st.executeUpdate(update);
            }catch(Exception e){
                //si sucede un error se retorna su respectiva descripción, dicha descripción será guardada en una variable y podrá ser mostrada
                return e;
            }
        return null;
    }
  
        public ResultSet selectAllFromUsuario(String pass, String email) {
        try {
            //se llama al Driver JDBC
            Class.forName(driver);
            //se crea la coneccion con la Base de Datos elegida
            Connection con = null;

            con = DriverManager.getConnection(url + bd, user, password);
            String user = "";
            //se ejecuta la sentencia de pedir el usertag
            String selectUserTag = "SELECT * FROM usuario WHERE mail='" + email + "' AND contrasenia='" + pass + "';";
            Statement st = con.createStatement();
            ResultSet allFromUsuario = st.executeQuery(selectUserTag);
            
            return allFromUsuario;
        } catch (Exception e) {
            //si sucede un error se retorna su respectiva descripción, dicha descripción será guardada en una variable y podrá ser mostrada
            return (ResultSet) e;
        }
    }
        
    public void desconectar(){
        try {
            cx.close();
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void main(String[] args){
        Conexion conexion = new Conexion();
        conexion.conectar();
        
    }
}
