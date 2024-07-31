package clb;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class Credentials {
    private static final Logger logger = LogManager.getLogger(Credentials.class);

    private int id;
    private String firstName;
    private String lastName;

    // Getters and setters
    public int getId() {
        logger.debug("Getting ID: " + id);
        return id;
    }

    public void setId(int id) {
        this.id = id;
        logger.debug("Setting ID: " + id);
    }

    public String getFirstName() {
        logger.debug("Getting First Name: " + firstName);
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
        logger.debug("Setting First Name: " + firstName);
    }

    public String getLastName() {
        logger.debug("Getting Last Name: " + lastName);
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
        logger.debug("Setting Last Name: " + lastName);
    }

    // Additional method to demonstrate logging
    public void someMethod() {
        logger.info("Executing someMethod");
        logger.debug("Debugging someMethod");
        logger.error("Error in someMethod");
    }
}
