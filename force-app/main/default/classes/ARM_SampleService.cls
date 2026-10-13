/**
 * Sample service class used to exercise ARM metadata retrieval and deployment.
 */
public with sharing class ARM_SampleService {
    private static final String DEFAULT_TARGET = 'Hello World !!!!';

    /**
     * Builds a greeting, falling back to a default when no name is supplied.Test
     */
    public static String greet(String name) {
        String target = String.isBlank(name) ? DEFAULT_TARGET : name.trim();
        return 'Hello Mr., ' + target + '!';
    }

    /**
     * Returns the number of Accounts visible to the running user.
     */
    public static Integer countAccounts() {
        return [SELECT COUNT() FROM Account WITH USER_MODE];
    }
}