/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.mil.ejercito.controllers;

import co.mil.ejercito.service.FactorialService;
import java.util.logging.Logger;
import javax.websocket.server.PathParam;
import org.hibernate.validator.internal.util.logging.Log;
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
@RequestMapping("/controller")
public class FactorialController {

    private static final Logger LOG = Logger.getLogger(FactorialController.class.getName());

    @Autowired
    private FactorialService factorialService;

    private static final String MSG_ERROR = "msg_error";
    private static final String MSG_OK = "msg_ok";

    @RequestMapping(value = "/find", method = RequestMethod.POST)
    public String findFactorial(@PathParam("valor") int valor, Model model) {

        LOG.info("ingreso al metodo findFactorial()" + valor);
//        if (valor == null ||valor == valor.trim().isEmpty()) {
//            model.addAttribute(MSG_ERROR, "Debe ingresar el número.");
//            return "factorial-view";
//
//        }
        if(valor<0){
           model.addAttribute(MSG_ERROR, "Debe ingresar el número entero, no se permiten negativos ."); 
           return "factorial-view";
        }else {
            model.addAttribute(MSG_OK, "El factorial de : " + valor + " es  : " + factorialService.factorial(valor));
        }

        model.addAttribute("factorial", factorialService.factorial(valor));

        LOG.info("resultado del metodo" + factorialService.factorial(valor));

//        } catch (Exception e) {
//            model.addAttribute(MSG_ERROR, "Debe ingresar un valor entero.");
//        }
        return "factorial-view";
    }
}
