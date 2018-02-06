package com.grow.agriculture.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.core.env.Environment;
<<<<<<< HEAD
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
=======
>>>>>>> 05db90cd606a351d18eb4bc5fe35fc02f06664fd
import org.springframework.data.redis.connection.lettuce.LettuceConnectionFactory;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.session.data.redis.config.annotation.web.http.EnableRedisHttpSession;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.webflow.config.AbstractFlowConfiguration;

import com.grow.agriculture.dao.UserDao;
import com.grow.agriculture.dao.impl.UserDaoImpl;


@EnableWebMvc // mvc:annotation-driven
@Configuration
@EnableRedisHttpSession
@PropertySource(value = { "classpath:jdbc.properties" })
@EnableTransactionManagement
@ComponentScan({ "com.grow.agriculture.controllers" })
public class SpringConfiguration implements WebMvcConfigurer {
	private static final Logger log = Logger.getLogger(SpringConfiguration.class);

	@Autowired
	Environment environment;

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}

	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}

	@Bean
	public ResourceBundleMessageSource messageSource() {
		ResourceBundleMessageSource source = new ResourceBundleMessageSource();
		source.setBasename("messages");
		source.setUseCodeAsDefaultMessage(true);
		return source;
	}

	/* Hibernate Configuration */

	@Bean
	public DataSource dataSource() {
		BasicDataSource basicDataSource = new BasicDataSource();
		basicDataSource.setDriverClassName(environment.getProperty("database.classname"));// databaseClassName);
		basicDataSource.setUrl(environment.getProperty("database.url"));// databaseUrl);
																		// //"jdbc:oracle:thin:172.30.55.61:1521:XE"));
		basicDataSource.setUsername(environment.getProperty("database.username"));// databaseUsername);//"nikhil");
		basicDataSource.setPassword(environment.getProperty("database.password"));// databasePassword);//"admin");
		return basicDataSource;
	}

	@Bean
	public LocalSessionFactoryBean sessionFactory() {
		LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
		sessionFactory.setDataSource(dataSource());
		sessionFactory.setPackagesToScan("com.grow.agriculture.dto");
		sessionFactory.setHibernateProperties(hibernateProperties());
		return sessionFactory;
	}

	@Bean
	public PlatformTransactionManager hibernateTransactionManager() {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager();
		transactionManager.setSessionFactory(sessionFactory().getObject());
		return transactionManager;
	}

	private final Properties hibernateProperties() {
		Properties hibernateProperties = new Properties();
		/*hibernateProperties.setProperty("hibernate.hbm2ddl.auto", "create");*/
		hibernateProperties.setProperty("hibernate.dialect", "org.hibernate.dialect.Oracle10gDialect");
		hibernateProperties.put("hibernate.show_sql", "true");
		hibernateProperties.put("hibernate.format_sql", "true");
		return hibernateProperties;
	}
	
<<<<<<< HEAD
	/*@Bean
	public LettuceConnectionFactory connectionFactory() {
    	LettuceConnectionFactory lettuceConnectionFactory = new LettuceConnectionFactory();
    	lettuceConnectionFactory.setPort(6379);
    	lettuceConnectionFactory.setHostName("localhost");
		return lettuceConnectionFactory;
	}*/
	
	@Bean
    public JedisConnectionFactory connectionFactory() {
		JedisConnectionFactory jedisConnectionFactory = new JedisConnectionFactory();
		jedisConnectionFactory.setHostName("locahost");
		jedisConnectionFactory.setPort(6379);
        return new JedisConnectionFactory();
    }
	
	
=======
	@Bean
	public LettuceConnectionFactory connectionFactory() {
    	LettuceConnectionFactory lettuceConnectionFactory = new LettuceConnectionFactory();
    	lettuceConnectionFactory.setPort(6379);
    	lettuceConnectionFactory.setHostName("172.30.55.44");
		return lettuceConnectionFactory;
	}
>>>>>>> 05db90cd606a351d18eb4bc5fe35fc02f06664fd
}
