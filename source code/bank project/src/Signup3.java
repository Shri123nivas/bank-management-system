package bank.management.system;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Random;

public class Signup3 extends JFrame implements ActionListener {

    JRadioButton r1,r2,r3,r4;
    JCheckBox c1,c2,c3,c4,c5,c6;
    JButton s,c;

    String formno, email;

    Signup3(String formno, String email){

        this.formno = formno;
        this.email = email;

        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("icon/bank.png"));
        Image i2 = i1.getImage().getScaledInstance(100,100,Image.SCALE_DEFAULT);
        ImageIcon i3 = new ImageIcon(i2);
        JLabel image = new JLabel(i3);
        image.setBounds(150,5,100,100);
        add(image);

        JLabel l1 = new JLabel("Page 3:");
        l1.setFont(new Font("Raleway",Font.BOLD,22));
        l1.setBounds(280,40,400,40);
        add(l1);

        JLabel l2 = new JLabel("Account Details");
        l2.setFont(new Font("Raleway",Font.BOLD,22));
        l2.setBounds(280,70,400,40);
        add(l2);

        // Account Type
        JLabel l3 = new JLabel("Account Type:");
        l3.setFont(new Font("Raleway",Font.BOLD,18));
        l3.setBounds(100,140,200,30);
        add(l3);

        r1 = new JRadioButton("Saving Account");
        r1.setBounds(100,180,150,30);
        r1.setBackground(new Color(215,252,252));
        add(r1);

        r2 = new JRadioButton("Fixed Deposit Account");
        r2.setBounds(350,180,250,30);
        r2.setBackground(new Color(215,252,252));
        add(r2);

        r3 = new JRadioButton("Current Account");
        r3.setBounds(100,220,150,30);
        r3.setBackground(new Color(215,252,252));
        add(r3);

        r4 = new JRadioButton("Recurring Deposit Account");
        r4.setBounds(350,220,250,30);
        r4.setBackground(new Color(215,252,252));
        add(r4);

        ButtonGroup bg = new ButtonGroup();
        bg.add(r1); bg.add(r2); bg.add(r3); bg.add(r4);

        // Card number
        JLabel l4 = new JLabel("Card Number:");
        l4.setBounds(100,300,200,30);
        add(l4);

        JLabel l5 = new JLabel("(Your 16-digit Card Number)");
        l5.setBounds(100,330,200,20);
        add(l5);

        JLabel l6 = new JLabel("XXXX-XXXX-XXXX-4841");
        l6.setBounds(330,300,250,30);
        add(l6);

        // PIN
        JLabel l8 = new JLabel("PIN:");
        l8.setBounds(100,370,200,30);
        add(l8);

        JLabel l9 = new JLabel("XXXX");
        l9.setBounds(330,370,200,30);
        add(l9);

        // Services Required
        JLabel l11 = new JLabel("Services Required:");
        l11.setBounds(100,450,200,30);
        add(l11);

        c1 = new JCheckBox("ATM CARD");
        c1.setBounds(100,500,200,30);
        c1.setBackground(new Color(215,252,252));
        add(c1);

        c2 = new JCheckBox("Internet Banking");
        c2.setBounds(350,500,200,30);
        c2.setBackground(new Color(215,252,252));
        add(c2);

        c3 = new JCheckBox("Mobile Banking");
        c3.setBounds(100,550,200,30);
        c3.setBackground(new Color(215,252,252));
        add(c3);

        c4 = new JCheckBox("Email Alerts");
        c4.setBounds(350,550,200,30);
        c4.setBackground(new Color(215,252,252));
        add(c4);

        c5 = new JCheckBox("Cheque Book");
        c5.setBounds(100,600,200,30);
        c5.setBackground(new Color(215,252,252));
        add(c5);

        c6 = new JCheckBox("E-Statement");
        c6.setBounds(350,600,200,30);
        c6.setBackground(new Color(215,252,252));
        add(c6);

        JLabel l12 = new JLabel("Form No : " + formno);
        l12.setBounds(650,10,200,30);
        add(l12);

        // Buttons
        s = new JButton("Submit");
        s.setBounds(250,720,100,30);
        s.addActionListener(this);
        add(s);

        c = new JButton("Cancel");
        c.setBounds(420,720,100,30);
        c.addActionListener(this);
        add(c);

        getContentPane().setBackground(new Color(215,252,252));
        setSize(850,800);
        setLayout(null);
        setLocation(400,20);
        setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {

        String accountType = null;
        if(r1.isSelected()) accountType="Saving";
        else if(r2.isSelected()) accountType="Fixed Deposit";
        else if(r3.isSelected()) accountType="Current";
        else if(r4.isSelected()) accountType="Recurring";

        if(accountType==null){
            JOptionPane.showMessageDialog(null,"Select Account Type");
            return;
        }

        Random ran = new Random();
        String cardNumber = "" + Math.abs((ran.nextLong()%90000000L)+5040936056L);
        String pinNumber = "" + Math.abs((ran.nextLong()%9000L)+1000L);

        try{
            Connn c=new Connn();

            String query="INSERT INTO signupthree(formno,accounttype,cardnumber,pinnumber) VALUES('"+
                    formno+"','"+accountType+"','"+cardNumber+"','"+pinNumber+"')";
            c.statement.executeUpdate(query);

            String loginQuery="INSERT INTO login(card_number,pin) VALUES('"+
                    cardNumber+"','"+pinNumber+"')";
            c.statement.executeUpdate(loginQuery);

            // ⭐ EMAIL SEND
            SendEmail.sendMail(email,cardNumber,pinNumber);

            JOptionPane.showMessageDialog(null,
                    "Card Number : "+cardNumber+"\nPin : "+pinNumber);

            setVisible(false);
            new Deposit(pinNumber);

        }catch(Exception ex){
            ex.printStackTrace();
        }
    }

    public static void main(String[] args){
        new Signup3("1234","test@gmail.com");
    }
}
