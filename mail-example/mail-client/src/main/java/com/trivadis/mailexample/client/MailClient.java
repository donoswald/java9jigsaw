package com.trivadis.mailexample.client;

import com.trivadis.mailexample.api.MailSender;
import com.trivadis.mailexample.api.MailSenderFactory;

/**
 * Created by mow on 01-Dec-16.
 */
public class MailClient {
    public static void main(String [] args) {
        MailSender mail = new MailSenderFactory().create();
        mail.sendMail(
                "johannes@xzy.de", "Hello Jigsaw"
        );
    }
}