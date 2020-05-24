package application;
import application.One;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import application.Storage;
class Two 
{
	static JPanel panel2 ;
	
	//static JFrame frame1;
	//static Container c;
	static JCheckBox check[] = new JCheckBox[7];
	
	static JTextField quantity[] = new JTextField[7];
	static JTextField prices[] = new JTextField[7] ;
	static JTextField t ;
	static JLabel v[] = new JLabel[7];
	public Two()
	//public static void main(String[] args)
	{
		
		
		/*
		frame1 = new JFrame();
		frame1.setVisible(true);	       				// it will make the java frame visible
		frame1.setSize(1500, 950);       				// it will set the size of java frame
		frame1.setLocation(0, 0);    				// it will set the location of java frame
		frame1.setTitle("java frame"); 				// it will set the title of the java frame
		c = frame1.getContentPane();   	// it will generate a container 
		c.setBackground(Color.WHITE);
		//c.setLayout(null);
		*/
		Font font = new Font("arial",Font.ITALIC,20);
		
		panel2 = new JPanel();
		panel2.setVisible(true);
		
		panel2.setLayout(null);
		One.c.add(panel2);

		
		JLabel variety  = new JLabel("Exclusive Variety");
		variety.setBounds(180, 75, 180, 25);
		variety.setFont(font);
		panel2.add(variety);
		
		
		JLabel price  = new JLabel("Reasonable Price");
		price.setBounds(375, 75, 180, 25);
		price.setFont(font);
		panel2.add(price);
		
		
		v[0] = new JLabel("Barik Bhujia");
		v[1] = new JLabel("Bhavnagri Bhujia");
		v[2] = new JLabel("Sweet Mixture");
		v[3] = new JLabel("Spicy Mixture");
		v[4] = new JLabel("Simple Papad");
		v[5] = new JLabel("Javitri Papad");
		v[6] = new JLabel("kaju");
		
		JLabel p[]  = new JLabel[7];
		
		
		
		p[0] = new JLabel("120");
		p[1] = new JLabel("120");
		p[2] = new JLabel("120");
		p[3] = new JLabel("120");
		p[4] = new JLabel("120");
		p[5] = new JLabel("120");
		p[6] = new JLabel("120");
		
		
		JLabel quant = new JLabel("Quantity");
		quant.setBounds(575, 75, 100, 25);
		quant.setFont(font);
		panel2.add(quant);
		
		JLabel pri = new JLabel("Price");
		pri.setBounds(700, 75, 100, 25);
		pri.setFont(font);
		panel2.add(pri);
		
		for(int i=0;i<7;i++)
		{
			check[i] = new JCheckBox();
			check[i].setBounds(100, 150+i*75, 20, 20);
														// TO increase the size of java check box 
			check[i].setBackground(Color.GREEN);
			check[i].setForeground(Color.BLUE);
			
			v[i].setBounds(180, 75 + i*75 + 75, 180, 25);
			v[i].setFont(font);
			
			p[i].setBounds(425, 75 + i*75 + 75, 180, 25);
			p[i].setFont(font);
			
			quantity[i] = new JTextField();
			quantity[i].setBounds(575,75 + i*75 + 75 ,90,25);
			quantity[i].setFont(font);
			
			prices[i] = new JTextField();
			prices[i].setBounds(700,75 + i*75 + 75 ,90,25);
			prices[i].setFont(font);
			
			//ListnerClass2 listen = new ListnerClass2();
			//quantity[i].addActionListener(listen);
			
			ListnerClass2 listen3 = new ListnerClass2();
			check[i].addItemListener(listen3);
			
			panel2.add(check[i]);
			panel2.add(v[i]);
			panel2.add(p[i]);
			panel2.add(quantity[i]);
			panel2.add(prices[i]);
			
			
		}
	
		JButton button = new JButton("Total");  		// it will create a button object and name it 
		button.setBounds(575,700,90,25); 			// it will set the size and location of button
		button.setFont(font);  						// it will change the font in the button
		button.setBackground(Color.YELLOW); 		// it will change the background color of button
		button.setForeground(Color.WHITE);			// it will variate foreground color of button
	
		ListnerClass2 listen2 = new ListnerClass2();
		button.addMouseListener(listen2);
		panel2.add(button);
		
		t = new JTextField();
		t.setBounds(700,700,90,25);
		t.setFont(font);
		panel2.add(t);
	
		JButton ok = new JButton("OK");
		ok.setBounds(300, 750, 90, 30);
		ok.setFont(font);
		ok.setBackground(Color.GREEN);
		ok.setForeground(Color.white);
		panel2.add(ok);
	
		ListnerClass3 listen4 = new ListnerClass3();
		ok.addActionListener(listen4);
	
	}
	
	
}


class ListnerClass2 implements ActionListener,MouseListener,ItemListener
{
	public void actionPerformed(ActionEvent e)
	{
		for(int i=0;i<7;i++)
		{
			if(e.getSource() == Two.quantity[i])
			{	
				String q =  Two.quantity[i].getText();
				int qty = Integer.parseInt(q) ; 
				int price = qty*120 ;
				Two.prices[i].setText(price+"");
			}
		}
	}

	@Override
	public void mouseClicked(MouseEvent e) {
		// TODO Auto-generated method stub
		int sum = 0;
		for(int i=0;i<7;i++)
		{
				if(Two.check[i].isSelected())
				{	
					String p = Two.prices[i].getText();
					int pri = Integer.parseInt(p);
					sum = sum + pri;
					Two.t.setText(sum+"");
				}	
		}	
	}

	@Override
	public void mousePressed(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseReleased(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseEntered(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseExited(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void itemStateChanged(ItemEvent e) {
		// TODO Auto-generated method stub
		
		for(int i=0;i<7 ;i++)
		{
			ListnerClass2 listen = new ListnerClass2();
			
			if(Two.check[i].isSelected())
			{
				Two.quantity[i].addActionListener(listen);
			}
		}
		
		
	}
}

class ListnerClass3 implements ActionListener
{
	public void actionPerformed(ActionEvent e)
	{
		int j=0;
		Storage store = new Storage();
		for(int i=0;i<7;i++)
		{
			if(Two.check[i].isSelected())
			{
				store.namkeen[j] =  Two.v[i].getText();
				store.quantity[j] = Two.quantity[i].getText();
				store.price[j] = Two.prices[i].getText();
				j++;
			}
				
		}
		store.l = j;
		Storage.invoice = store;
		Two.panel2.setVisible(false);
		
		Three f = new Three(store);
		
	}
}	
