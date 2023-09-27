/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Utils;

import java.math.BigInteger;
import java.security.MessageDigest;

/**
 *
 * @author saust
 */
public class Encriptar {    
    //función para encriptar
    public String getMD5(String input) {

        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] encBytes = md.digest(input.getBytes());
            BigInteger numero = new BigInteger(1, encBytes);

            String encString = numero.toString(16);
            while (encString.length() < 32) {
                encString = "0" + encString;
            }
            //retorna el string encriptado
            return encString;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    
    
    
}
