
package jo.secondstep.controllers;
import org.apache.catalina.core.ApplicationContext;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;


@SpringBootApplication
public class SpringMvcjpaApplication  {
	HrService Hr;

	public static void main(String[] args) {
		SpringApplication.run(SpringMvcjpaApplication.class, args);
		
		
	}
	



}
