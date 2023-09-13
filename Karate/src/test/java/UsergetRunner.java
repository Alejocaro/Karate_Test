import com.intuit.karate.junit5.Karate;


public class UsergetRunner {

        @Karate.Test
        Karate userGet(){
            return Karate.run("Users/get/user-get").relativeTo(getClass());
        }
}
