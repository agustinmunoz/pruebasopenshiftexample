package com.example.pruebas.openshift.example.pruebasopenshiftexample.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @GetMapping(value="/saludo")
    public String saludo(){
        return "Hola";
            }

}
