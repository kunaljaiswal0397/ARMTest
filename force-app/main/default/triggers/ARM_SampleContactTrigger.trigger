/**
 * Sample trigger used to exercise ARM metadata deployment.
 */
trigger ARM_SampleContactTrigger on Contact (before insert, before update) {
    for (Contact con : Trigger.new) {
        if (String.isBlank(con.Description)) {
            con.Description = 'Stamped by ARM_SampleContactTrigger.';
        }
    }
}