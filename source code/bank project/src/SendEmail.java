package bank.management.system;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class SendEmail {

    public static void sendMail(String toEmail, String cardNo, String pin) {

        String fromEmail = "shrinivaspatil1310@gmail.com"; // tuza gmail
        String password = "rpfgjssqqhjrmjpr\n"; // gmail app password

        Properties props = new Properties();

        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(props,
                new Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(fromEmail, password);
                    }
                });

        try {
            Message message = new MimeMessage(session);

            message.setFrom(new InternetAddress(fromEmail));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(toEmail)
            );

            message.setSubject("Your Bank Account Details");

            String msg =
                    "Welcome to Our Yodhha Bank\n\n Namaste Golu kumar sir " +
                            "Your Card Number: " + cardNo + "\n" +
                            "Your PIN: " + pin + "\n\n" +
                            "Keep it safe.";

            message.setText(msg);

            Transport.send(message);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
