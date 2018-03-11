/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.mil.ejercito.service;

import org.springframework.stereotype.Service;

/**
 *
 * @author David Antonio Quijano Ramos
 */
@Service
public class FactorialService {
    
    public  int factorial(int x){
        
        if (x == 0) {
            return 1;//factorial de 0=1
        } else {
            return x * factorial(x - 1);
             
        }
        
    }
    
}
