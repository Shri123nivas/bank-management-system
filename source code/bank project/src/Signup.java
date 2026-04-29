package bank.management.system;

import com.toedter.calendar.JDateChooser;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.net.URL;
import java.util.Random;

public class Signup extends JFrame implements ActionListener {

    JRadioButton r1, r2, m1, m2, m3;
    JButton next;
    JTextField textName, textFname, textEmail, textAdd, textcity, textState, textPin;
    JDateChooser dateChooser;

    Random ran = new Random();
    long first4 = (ran.nextLong() % 9000L) + 1000L;
    String first = "" + Math.abs(first4);

    Signup() {
        super("APPLICATION FORM");
        setLayout(null);

        URL bankUrl = ClassLoader.getSystemResource("icon/bank.png");
        if (bankUrl != null) {
            ImageIcon i1 = new ImageIcon(bankUrl);
            Image i2 = i1.getImage().getScaledInstance(100, 100, Image.SCALE_DEFAULT);
            JLabel image = new JLabel(new ImageIcon(i2));
            image.setBounds(25, 10, 100, 100);
            add(image);
        }

        JLabel label1 = new JLabel("APPLICATION FORM NO. " + first);
        label1.setBounds(160, 20, 600, 40);
        label1.setFont(new Font("Raleway", Font.BOLD, 38));
        add(label1);

        JLabel label2 = new JLabel("Page 1");
        label2.setFont(new Font("Raleway", Font.BOLD, 22));
        label2.setBounds(330, 70, 600, 30);
        add(label2);

        JLabel label3 = new JLabel("Personal Details");
        label3.setFont(new Font("Raleway", Font.BOLD, 22));
        label3.setBounds(290, 90, 600, 30);
        add(label3);

        JLabel labelName = new JLabel("Name :");
        labelName.setBounds(100, 190, 100, 30);
        add(labelName);

        textName = new JTextField();
        textName.setBounds(300, 190, 400, 30);
        add(textName);

        JLabel labelfName = new JLabel("Father's Name :");
        labelfName.setBounds(100, 240, 200, 30);
        add(labelfName);

        textFname = new JTextField();
        textFname.setBounds(300, 240, 400, 30);
        add(textFname);

        JLabel labelG = new JLabel("Gender");
        labelG.setBounds(100, 290, 200, 30);
        add(labelG);

        r1 = new JRadioButton("Male");
        r2 = new JRadioButton("Female");
        r1.setBounds(300, 290, 80, 30);
        r2.setBounds(400, 290, 100, 30);
        add(r1);
        add(r2);

        ButtonGroup bg = new ButtonGroup();
        bg.add(r1);
        bg.add(r2);

        JLabel DOB = new JLabel("Date of Birth");
        DOB.setBounds(100, 340, 200, 30);
        add(DOB);

        dateChooser = new JDateChooser();
        dateChooser.setBounds(300, 340, 400, 30);
        add(dateChooser);

        JLabel labelEmail = new JLabel("Email Address :");
        labelEmail.setBounds(100, 390, 200, 30);
        add(labelEmail);

        textEmail = new JTextField();
        textEmail.setBounds(300, 390, 400, 30);
        add(textEmail);

        next = new JButton("Next");
        next.setBounds(620, 710, 80, 30);
        next.setBackground(Color.BLACK);
        next.setForeground(Color.WHITE);
        next.addActionListener(this);
        add(next);

        getContentPane().setBackground(new Color(222, 255, 228));
        setSize(850, 800);
        setLocation(360, 40);
        setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {

        String name = textName.getText();
        String fname = textFname.getText();
        String dob = ((JTextField) dateChooser.getDateEditor().getUiComponent()).getText();
        String gender = r1.isSelected() ? "Male" : "Female";
        String email = textEmail.getText();

        if (name.equals("") || fname.equals("") || dob.equals("") || email.equals("")) {
            JOptionPane.showMessageDialog(null, "Please fill all required fields");
            return;
        }

        try {
            Connn c = new Connn();

            String query =
                    "INSERT INTO signup(formno, name, fname, dob, gender, email) VALUES('" +
                            first + "','" +
                            name + "','" +
                            fname + "','" +
                            dob + "','" +
                            gender + "','" +
                            email + "')";

            c.statement.executeUpdate(query);

            // ⭐ EMAIL Signup2 la pass karto
            setVisible(false);
            new Signup2(first, email);

        } catch (Exception ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(null, "Database Error");
        }
    }

    public static void main(String[] args) {
        new Signup();
    }
}
