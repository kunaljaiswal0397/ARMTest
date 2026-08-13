/**
 * Sample trigger used to exercise ARM metadata deployment.
 */
trigger ARM_SampleAccountTrigger on Account (before insert) {
    for (Account acct : Trigger.new) {
        if (String.isBlank(acct.Description)) {
            acct.Description = 'Stamped by ARM_SampleAccountTrigger.';
        }
    }
}