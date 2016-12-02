package com.trivadis.mailexample.api;

/**
 * Created by mow on 01-Dec-16.
 */
public interface MailSender {
    public void sendMail (String to, String message);
}
