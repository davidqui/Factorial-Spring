/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.mil.ejercito.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author dquijanor
 */

@Controller
@RequestMapping("/")
public class MainController {
    
    @RequestMapping
    public String showfactorial(){
        return "factorial-view";
    }
    
}
