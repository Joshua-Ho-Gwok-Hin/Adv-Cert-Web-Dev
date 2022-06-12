package com.aaa.service;

import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SuccessEmail {
	public static void sendSuccessMail(String recepient) throws Exception {   
			System.out.println("Preparing to send email");
            Properties prop = new Properties();
            
    		prop.put("mail.smtp.host", "smtp.gmail.com");
            prop.put("mail.smtp.port", "587");
            prop.put("mail.smtp.auth", "true");
            prop.put("mail.smtp.starttls.enable", "true"); //TLS
            
            String myAccountEmail = "joshuaportallithan@gmail.com";
            String myEmailPassword = "portallithan123";
            
            Session session = Session.getInstance(prop, new Authenticator() {
                @Override        
            	protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication(myAccountEmail, myEmailPassword);//username, password
                        }
                    });

            	Message message = prepareMessage(session, myAccountEmail, recepient);
            	Transport.send(message);
            	System.out.println("Message sent successfully");
	}
            	private static Message prepareMessage(Session session, String myAccountEmail, String recepient) {
            		try {
            			Message message = new MimeMessage(session);
            			message.setFrom(new InternetAddress(myAccountEmail));//my email
            			message.setRecipient(
            					Message.RecipientType.TO,
            					new InternetAddress(recepient));
            			
            			message.setSubject("Testing Gmail TLS");
            			message.setText("Dear" + "c"
            					+ "\n\n Thank you for registering with ABC job portal.!"
            					+ "\n We are delighted to have you with us and hope to provide the services"
            					+ "\n needed in the website."
            					+ "\n\n Regards"
            					+ "\n ABC job portal team");
            			return message;
						
					} catch (Exception ex) {
						Logger.getLogger(SuccessEmail.class.getName()).log(Level.SEVERE, null, ex);
					}
            		return null;
            	}
            	
            	
}

