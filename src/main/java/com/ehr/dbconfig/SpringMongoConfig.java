package com.ehr.dbconfig;

import java.util.Arrays;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.MongoDbFactory;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.SimpleMongoDbFactory;
 



import com.mongodb.MongoClient;
import com.mongodb.MongoCredential;
import com.mongodb.ServerAddress;
 
@Configuration
public class SpringMongoConfig {
 
	public @Bean
	MongoDbFactory mongoDbFactory() throws Exception {
		
		char[] password = "test123".toCharArray();

		MongoCredential credential = MongoCredential.createMongoCRCredential(
				"arjun", "ehrdatabase", password);
		
		return new SimpleMongoDbFactory(new MongoClient(new ServerAddress(
				"ds031902.mongolab.com", 31902), Arrays.asList(credential)), "ehrdatabase");
	}
 
	public @Bean
	MongoTemplate mongoTemplate() throws Exception {
 
		MongoTemplate mongoTemplate = new MongoTemplate(mongoDbFactory());
 
		return mongoTemplate;
 
	}
 
}