package application;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import application.Storage;


public class Three {

	static JFrame frame1;
	static Container c;
	static JPanel panel3;
	public Three(Storage store)
	//public static void main(String[] args) 
	{
		// TODO Auto-generated method stub
		System.out.println("hello");

		/*
		frame1 = new JFrame();
		frame1.setVisible(true);	       				// it will make the java frame visible
		frame1.setSize(600, 500);       				// it will set the size of java frame
		frame1.setLocation(100, 50);    				// it will set the location of java frame
		frame1.setTitle("java frame"); 				// it will set the title of the java frame
		frame1.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		c = frame1.getContentPane();   	// it will generate a container 
		c.setBackground(Color.WHITE);
		c.setLayout(null);
		*/
		
		panel3 = new JPanel();
		panel3.setVisible(true);
		
		panel3.setLayout(null);
		One.c.add(panel3);

		
		JPanel panel4 = new JPanel();
		panel4.setBackground(new Color(0,255,0));
		panel4.setBounds(0, 0, 2000, 70);
		
		JPanel panel5 = new JPanel();
		panel5.setBackground(new Color(0,128,0));
		panel5.setBounds(0, 70, 2000, 20);
		
		
		panel3.add(panel4);
		panel3.add(panel5);
		
		/*
		Font font = new Font("arial",Font.ITALIC,20);
		
		panel3 = new JPanel();
		panel3.setVisible(true);
		
		panel3.setLayout(null);
		One.c.add(panel3);
		*/
		
		//String s = Storage.object.name[Storage.object.k] + "";
		
		Font f = new Font("comics sans",Font.ITALIC,20);  	
		
		System.out.println(Storage.information.name[Storage.information.k]);
		
		JLabel name = new JLabel("Name : " + Storage.information.name[Storage.information.k]);	    						  	 
		name.setBounds(225, 120, 500, 120);        	
		name.setFont(f);							
		panel3.add(name);								
	
		JLabel address = new JLabel("Address : " + Storage.information.address[Storage.information.k] );	    						  	 
		address.setBounds(225, 170, 500, 120);        	
		address.setFont(f);							
		panel3.add(address);								
	
		JLabel contact = new JLabel("Contact : " + Storage.information.contact[Storage.information.k] );	    						  	 
		contact.setBounds(225, 220, 500, 120);        	
		contact.setFont(f);							
		panel3.add(contact);								
	
		JLabel city = new JLabel("City : " + Storage.information.city[Storage.information.k] );	    						  	 
		city.setBounds(225, 270, 500, 120);        	
		city.setFont(f);							
		panel3.add(city);								
	
		JLabel state = new JLabel("State : " + Storage.information.state[Storage.information.k] );	    						  	 
		state.setBounds(225, 325, 500, 120);        	
		state.setFont(f);							
		panel3.add(state);								
	
		JLabel country = new JLabel("Country : " + Storage.information.country[Storage.information.k] );	    						  	 
		country.setBounds(225, 385, 500, 120);        	
		country.setFont(f);							
		panel3.add(country);	
		
		/*
		String namkeen[] = new String[7];
		String quantity[] = new String[7];
		String price[] = new String[7];
		*/
		int r = Storage.invoice.l;
		
		//JPanel bill = new JPanel();
		//bill.setBounds(250, 575, 250, 25);
		//bill.setFont(new Font("arial",Font.BOLD,20));
		//panel3.add(bill);
		
		Font font = new Font("arial",Font.ITALIC,20);
		
		JLabel variety = new JLabel("variety");
		variety.setBounds(270, 575 ,120, 25);
		variety.setFont(font);
		
		
		JLabel quantity = new JLabel("quantity");
		quantity.setBounds(500, 575 ,120 , 25);
		quantity.setFont(font);
		
		JLabel price = new JLabel("price");
		price.setBounds(625, 575 ,120 , 25);
		price.setFont(font);
		
		//bill.add(variety);
		//bill.add(quantity);
		//bill.add(price);
		
		panel3.add(variety);
		panel3.add(quantity);
		panel3.add(price);
		
		JLabel q[] = new JLabel[r]; 
		JLabel p[] = new JLabel[r];
		JLabel n[] = new JLabel[r];
		int sum = 0;
		
		
		int i;
		
		for(i=0;i< Storage.invoice.l;i++)
		{
			
			
			n[i] = new JLabel(Storage.invoice.namkeen[i]);
			n[i].setBounds(250, 575 + (i+2)*25 , 180, 25); 
			n[i].setFont(font);
			
			
			q[i] = new JLabel(Storage.invoice.quantity[i]);
			q[i].setBounds(500, 575 + (i+2)*25, 120, 25); 
			q[i].setFont(font);
			
			p[i] = new JLabel(Storage.invoice.price[i]);
			p[i].setBounds(625, 575 + (i+2)*25, 120, 25); 
			p[i].setFont(font);
			
			sum = sum + Integer.parseInt(Storage.invoice.price[i]);
			
			panel3.add(n[i]);
			panel3.add(q[i]);
			panel3.add(p[i]);
			
		
		}
		
		JLabel total = new JLabel("Total");
		total.setBounds(500, 575 + (i+3)*25, 150, 25);
		total.setFont(font);
		panel3.add(total);
		
		
		JLabel s = new JLabel("" + sum);
		s.setBounds(625, 575 + (i+3)*25, 150, 25);
		s.setFont(font);
		panel3.add(s);
	
		
		
		JButton ok = new JButton("ok");
		ok.setBounds(650,575 + (i+6)*25, 75, 25);
		ok.setFont(font);
		
		ListnerClass5 listen = new ListnerClass5();
		ok.addActionListener(listen);
		
		panel3.add(ok);
		
	}

}


class ListnerClass5 implements ActionListener
{
	public void actionPerformed(ActionEvent e)
	{
		Three.panel3.setVisible(false);
		
		
	
	}
}	
