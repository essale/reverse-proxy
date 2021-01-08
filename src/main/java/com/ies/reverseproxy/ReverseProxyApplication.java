package com.ies.reverseproxy;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;

@EnableZuulProxy
@SpringBootApplication
public class ReverseProxyApplication {

	public static void main(String[] args) {
		SpringApplication.run(ReverseProxyApplication.class, args);
	}

}
