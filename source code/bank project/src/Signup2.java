package bank.management.system;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Signup2 extends JFrame implements ActionListener {

    JComboBox<String> comboBox, comboBox2, comboBox3, comboBox4, comboBox5;
    JTextField textPan, textAadhar;
    JRadioButton r1, r2, e1, e2;
    JButton next;

    // ⭐ EMAIL ADD
    String formno, email;

    // ⭐ CONSTRUCTOR CHANGE
    Signup2(String formno, String email) {
        super("APPLICATION FORM - Page 2");

        this.formno = formno;
        this.email = email;

        ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("icon/bank.png"));
        Image i2 = i1.getImage().getScaledInstance(100, 100, Image.SCALE_DEFAULT);
        JLabel image = new JLabel(new ImageIcon(i2));
        image.setBounds(150, 5, 100, 100);
        add(image);

        JLabel l1 = new JLabel("Page 2 : Additional Details");
        l1.setFont(new Font("Raleway", Font.BOLD, 22));
        l1.setBounds(300, 30, 600, 40);
        add(l1);

        JLabel l3 = new JLabel("Religion :");
        l3.setBounds(100, 120, 150, 30);
        add(l3);

        comboBox = new JComboBox<>(new String[]{"Hindu", "Muslim", "Sikh", "Christian", "Other"});
        comboBox.setBounds(350, 120, 320, 30);
        add(comboBox);

        JLabel l4 = new JLabel("Category :");
        l4.setBounds(100, 170, 150, 30);
        add(l4);

        comboBox2 = new JComboBox<>(new String[]{"General", "OBC", "SC", "ST", "Other"});
        comboBox2.setBounds(350, 170, 320, 30);
        add(comboBox2);

        JLabel l5 = new JLabel("Income :");
        l5.setBounds(100, 220, 150, 30);
        add(l5);

        comboBox3 = new JComboBox<>(new String[]{"Null", "<1,50,000", "<2,50,000", "<5,00,000", "Above 10,00,000"});
        comboBox3.setBounds(350, 220, 320, 30);
        add(comboBox3);

        JLabel l6 = new JLabel("Education :");
        l6.setBounds(100, 270, 150, 30);
        add(l6);

        comboBox4 = new JComboBox<>(new String[]{"Non-Graduate", "Graduate", "Post-Graduate", "Doctorate", "Other"});
        comboBox4.setBounds(350, 270, 320, 30);
        add(comboBox4);

        JLabel l7 = new JLabel("Occupation :");
        l7.setBounds(100, 320, 150, 30);
        add(l7);

        comboBox5 = new JComboBox<>(new String[]{"Salaried", "Self-Employed", "Business", "Student", "Retired", "Other"});
        comboBox5.setBounds(350, 320, 320, 30);
        add(comboBox5);

        JLabel l8 = new JLabel("PAN Number :");
        l8.setBounds(100, 370, 150, 30);
        add(l8);

        textPan = new JTextField();
        textPan.setBounds(350, 370, 320, 30);
        add(textPan);

        JLabel l9 = new JLabel("Aadhar Number :");
        l9.setBounds(100, 420, 180, 30);
        add(l9);

        textAadhar = new JTextField();
        textAadhar.setBounds(350, 420, 320, 30);
        add(textAadhar);

        JLabel l10 = new JLabel("Senior Citizen :");
        l10.setBounds(100, 470, 180, 30);
        add(l10);

        r1 = new JRadioButton("Yes");
        r2 = new JRadioButton("No");
        r1.setBounds(350, 470, 80, 30);
        r2.setBounds(450, 470, 80, 30);
        add(r1);
        add(r2);

        ButtonGroup bg1 = new ButtonGroup();
        bg1.add(r1);
        bg1.add(r2);

        JLabel l11 = new JLabel("Existing Account :");
        l11.setBounds(100, 520, 180, 30);
        add(l11);

        e1 = new JRadioButton("Yes");
        e2 = new JRadioButton("No");
        e1.setBounds(350, 520, 80, 30);
        e2.setBounds(450, 520, 80, 30);
        add(e1);
        add(e2);

        ButtonGroup bg2 = new ButtonGroup();
        bg2.add(e1);
        bg2.add(e2);

        next = new JButton("Next");
        next.setBounds(570, 600, 100, 30);
        next.addActionListener(this);
        add(next);

        setLayout(null);
        setSize(850, 720);
        setLocation(450, 80);
        getContentPane().setBackground(new Color(252, 208, 76));
        setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {

        String rel = (String) comboBox.getSelectedItem();
        String cate = (String) comboBox2.getSelectedItem();
        String inc = (String) comboBox3.getSelectedItem();
        String edu = (String) comboBox4.getSelectedItem();
        String occ = (String) comboBox5.getSelectedItem();

        String pan = textPan.getText();
        String aadhar = textAadhar.getText();

        String scitizen = r1.isSelected() ? "Yes" : "No";
        String eAccount = e1.isSelected() ? "Yes" : "No";

        if (pan.equals("") || aadhar.equals("")) {
            JOptionPane.showMessageDialog(null, "Please fill all fields");
            return;
        }

        try {
            Connn c = new Connn();

            String query =
                    "INSERT INTO signuptwo(formno, religion, category, income, education, occupation, pan, aadhar, seniorcitizen, existingaccount) " +
                            "VALUES('" + formno + "','" +
                            rel + "','" +
                            cate + "','" +
                            inc + "','" +
                            edu + "','" +
                            occ + "','" +
                            pan + "','" +
                            aadhar + "','" +
                            scitizen + "','" +
                            eAccount + "')";

            c.statement.executeUpdate(query);

            // ⭐ EMAIL Signup3 la pass karto
            setVisible(false);
            new Signup3(formno, email);

        } catch (Exception ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(null, "Database Error in Page 2");
        }
    }

    public static void main(String[] args) {
        new Signup2("", "test@gmail.com");
    }
}
