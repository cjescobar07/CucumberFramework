package steps;


import io.cucumber.java.After;
import io.cucumber.java.Before;
import utilities.CommonMethods;

public class Hooks extends CommonMethods {


    @Before
    public void start(){
        openBrowserAndLauchApplication();
    }

    @After
    public void end(){
        tearDown();
    }



}
