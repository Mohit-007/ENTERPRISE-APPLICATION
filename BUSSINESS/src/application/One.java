package application;
import application.Storage;
import javax.swing.*;
import javax.swing.border.LineBorder;
import java.sql.*;

import java.awt.*;
import java.awt.event.*;
import application.Two;

public class One {

	static Container c;
	static JTextField password;
	static JTextField identity; 
	static JFrame frame;
	static JPanel panel1 ;
	
	public static void main(String[] args)
	{ 
		
		
		frame = new JFrame();
		//frame.setLocationRelativeTo(null);
		frame.setVisible(true);	       				// it will make the java frame visible
		frame.setSize(600, 1000);       				// it will set the size of java frame
		frame.setLocation(100, 50);    				// it will set the location of java frame
		frame.setTitle("java frame"); 				// it will set the title of the java frame
		c = frame.getContentPane();   	// it will generate a container 
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		Color color = new Color(109,132,180);
		//c.setBackground(color);
		//c.setLayout(null);
		
		panel1 = new JPanel();
		panel1.setVisible(true);
		panel1.setBackground(color);
		panel1.setLayout(null);
		c.add(panel1);

		
		JLabel id_label = new JLabel("Identity : ");
		id_label.setBounds(180,150,100,25);
		Font f = new Font("Aquiline Two",Font.ITALIC,20);  	// it will set the font size and font style
		id_label.setFont(f);							// it will add that font in the label
		id_label.setForeground(Color.BLACK);
		//c.add(id_label);
		panel1.add(id_label);
		
		
		JLabel label = new JLabel("Password : ");
		label.setBounds(180, 200,120,25);
		label.setFont(f);							// it will add that font in the label
		label.setForeground(Color.BLACK);
		//c.add(label);
		panel1.add(label);
		
		identity = new JTextField("mohitpitti007@gmail.com");
		identity.setBounds(280, 150, 120,25);    		// it will give height and width of division and location
		identity.setFont(new Font("arial",Font.ITALIC,15));  						// it will change the font in the text box | add it in text box
		//c.add(identity);
		panel1.add(identity);
		
		password = new JTextField("Mohit@007");
		password.setBounds(300, 200, 150,25);    		// it will give height and width of division and location
		password.setFont(new Font("arial",Font.ITALIC,15));  						// it will change the font in the text box | add it in text box
		//c.add(password);
		panel1.add(password);
		
		JButton login = new JButton("Login");
		login.setBounds(180,250,100,40); 			// it will set the size and location of button
		login.setFont(f);  						// it will change the font in the button
		login.setBackground(Color.BLUE);
		login.setForeground(Color.WHITE);
		login.setBorder(new LineBorder(Color.WHITE));
		
		//c.add(login);
		panel1.add(login);
		
		JButton create = new JButton("create a new account");
		create.setBounds(300,250,250,40); 			// it will set the size and location of button
		create.setFont(f);  						// it will change the font in the button
		create.setBackground(Color.GREEN);
		create.setForeground(Color.WHITE);
		create.setBorder(new LineBorder(Color.WHITE)); // new border
		panel1.add(create);
	
		
		ListnerClass1 listen = new ListnerClass1();
		login.addActionListener(listen);
		
		
		
	}
	
}


class ListnerClass1 implements ActionListener
{
	public void actionPerformed(ActionEvent e)
	{
		try {
		String id = One.identity.getText();
		String pass = One.password.getText();
		
		
		int i = 0;
		Storage a = new Storage();
		String URL = "jdbc:mysql://localhost:3306/information" ;
		String UN  = "root" ;
		String PW  = "Mohit@007" ; 	
		String query = "select * from personal" ; 

		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection(URL,UN,PW);      
		Statement s = con.createStatement() ;              
		ResultSet x = s.executeQuery("select * from personal") ;
		
		int count = 0;
		while(x.next())					   
		{	
			
			a.name[i] = x.getString(1);
			a.id[i] = x.getString(2);
			a.password[i] = x.getString(3) ;
			
			a.contact[i] = x.getString(8);	
			a.address[i] = x.getString(4);
			a.city[i] = x.getString(5);
			a.state[i] = x.getString(6) ;
			a.country[i] = x.getString(7);
			
			/*
			One.a.name[i] = x.getString(1);
			One.a.id[i] = x.getString(2);
			One.a.password[i] = x.getString(3) ;
			
			One.a.contact[i] = x.getString(8);	
			One.a.address[i] = x.getString(4);
			One.a.city[i] = x.getString(5);
			One.a.state[i] = x.getString(6) ;
			One.a.country[i] = x.getString(7);
			*/
			
			i++;
			count++;
		}
		
		
		for(i=0;i<=count;i++)
		{
			if(id.equals(a.id[i]) && pass.equals(a.password[i]))
			{
				a.k = i;
				Storage.information = a;
				One.panel1.setVisible(false);
				
				
				Two t = new Two();
				//One.frame.dispose();
				
			}
		}
		
	}
		catch (Exception e1) 
		{
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}		    


		
	}
}


// note : 
// 1) apply the switching of java frame
// 2) apply the switching of java panels
// 3) apply the switching of card layout
