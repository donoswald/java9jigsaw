package com.trivadis.mailexample.impl;

import com.trivadis.mailexample.api.MailSender;

/**
 * Created by mow on 01-Dec-16.
 */
public class SmtpSenderImpl implements MailSender {
    @Override
    public void sendMail(String to, String message) {
        System.out.println("send message "+message+" to "+to);
    }
}
