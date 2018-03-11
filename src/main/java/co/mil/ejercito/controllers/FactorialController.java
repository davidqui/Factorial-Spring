/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.mil.ejercito.controllers;

import co.mil.ejercito.service.FactorialService;
import javax.websocket.server.PathParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author David Antonio Quijano Ramos
 */
@Controller
public class FactorialController {
    
    @Autowired
    private FactorialService factorialService;
    
    @RequestMapping(path = "/factorial", method = RequestMethod.GET)
    public  String findFactorial(@PathVariable("x")int x, Model model){
        factorialService.factorial(x);
        model.addAttribute(x);
        
        return "factorial-view";
    }
}
