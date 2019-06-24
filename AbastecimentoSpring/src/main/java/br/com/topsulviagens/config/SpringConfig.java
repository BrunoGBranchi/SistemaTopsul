package br.com.topsulviagens.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = { "br.com.topsulviagens.dao" })
public class SpringConfig {

}