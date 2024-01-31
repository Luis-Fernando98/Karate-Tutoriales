import com.intuit.karate.junit5.Karate;

public class KarateRanner {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:apiREST/Karate.feature");

    }
}
