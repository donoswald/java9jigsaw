/**
 * Created by mow on 01-Dec-16.
 */
module MailSerice {
    requires  MailAPI;
    provides  com.trivadis.mailexample.api.MailSender with
            com.trivadis.mailexample.impl.SmtpSenderImpl;
}