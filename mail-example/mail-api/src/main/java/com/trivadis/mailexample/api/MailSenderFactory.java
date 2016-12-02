package com.trivadis.mailexample.api;

import java.util.ServiceLoader;

/**
 * Created by mow on 01-Dec-16.
 */
public class MailSenderFactory {
    public MailSender create() {
        return ServiceLoader.load(MailSender.class).iterator().next();
    }

    ;
}
