package backpage;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("backpage.mapper")
@SpringBootApplication
public class BackpageApplication {

    public static void main(String[] args) {
        SpringApplication.run(BackpageApplication.class, args);
    }

}
