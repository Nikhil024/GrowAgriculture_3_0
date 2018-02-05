package com.grow.agriculture.configuration;

import org.springframework.session.web.context.AbstractHttpSessionApplicationInitializer;

public class Initializer extends AbstractHttpSessionApplicationInitializer { 

	public Initializer() {
		super(SpringConfiguration.class); 
	}
}