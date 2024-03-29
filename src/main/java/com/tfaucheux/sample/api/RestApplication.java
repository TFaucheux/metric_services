package com.tfaucheux.sample.api;

import javax.ws.rs.core.Application;
import java.util.HashSet;
import java.util.Set;

/**
 * REST Application
 */
public class RestApplication extends Application {

	private Set<Object> singletons = new HashSet<>();
	private Set<Class<?>> classes = new HashSet<>();

	public RestApplication(){
		classes.add(ImpMetricDailyAPI.class);
		// classes.add(AudienceInsightAPI.class);
	}
	@Override
	public Set<Class<?>> getClasses() {
		return classes;
	}
	@Override
	public Set<Object> getSingletons() {
		return singletons;
	}
}
