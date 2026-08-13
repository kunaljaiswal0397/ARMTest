/**
 * Tests for ARM_SampleService. Also serves as the member class for the
 * ARM sample test suites.
 */
@isTest
private class ARM_SampleServiceTest {
    @isTest
    static void greetUsesSuppliedName() {
        Assert.areEqual('Hello, ARM!', ARM_SampleService.greet('ARM'));
    }

    @isTest
    static void greetTrimsWhitespace() {
        Assert.areEqual('Hello, ARM!', ARM_SampleService.greet('  ARM  '));
    }

    @isTest
    static void greetFallsBackWhenBlank() {
        Assert.areEqual('Hello, World!', ARM_SampleService.greet('   '));
        Assert.areEqual('Hello, World!', ARM_SampleService.greet(null));
    }

    @isTest
    static void countAccountsSeesInsertedRecord() {
        insert new Account(Name = 'ARM Sample Account');

        Test.startTest();
        Integer total = ARM_SampleService.countAccounts();
        Test.stopTest();

        Assert.isTrue(total >= 1, 'Expected at least the inserted Account.');
    }
}