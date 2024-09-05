package embed;


import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import com.fazecast.jSerialComm.SerialPort;

public class sendtoard {
	
static SerialPort serial_port;
public static String a="";
public static void connect() throws IOException {
	
	SerialPort[] get_port=SerialPort.getCommPorts();
	
	SerialPort port=get_port[1];
		serial_port=SerialPort.getCommPort(port.getSystemPortName());
		
		if(serial_port.openPort()) {
			System.out.println("open successfully");
		}else {
			System.out.println("Failed to open ");
		}
	
	serial_port.setBaudRate(9600);
	InputStream input_stream=serial_port.getInputStream();

	/*OutputStream output_stream=serial_port.getOutputStream();
	DataOutputStream data_output = new DataOutputStream(output_stream);
	*/while(true) {
		char msg=(char)input_stream.read();
		a=a+msg;
		System.out.print(a);
		/*Scanner txt=new Scanner(System.in);
		String msg=txt.nextLine();*/
		
		/*String msg="hi hello";
		
		data_output.write(msg.getBytes("UTF-8"));*/
	}
	

}
public static void go() throws IOException {
	
	SerialPort[] get_port=SerialPort.getCommPorts();
	
	SerialPort port=get_port[1];
	serial_port=SerialPort.getCommPort(port.getSystemPortName());
	
		 if(serial_port.openPort()) {
		System.out.println("opentosuccessfully");
	}else {
		System.out.println("Failed to open");
	}
	serial_port.setBaudRate(9600);
	//InputStream input_stream=serial_port.getInputStream();
	
	OutputStream output_stream=serial_port.getOutputStream();
	DataOutputStream data_output = new DataOutputStream(output_stream);
	boolean i=true;
	while( i) {
		/*char msg=(char)input_stream.read();
		a+=msg;
		System.out.print(a);
		Scanner txt=new Scanner(System.in);
		String msg=txt.nextLine();*/
		
		String msg="@";
		i=false;
		System.out.println(msg+"  oru muyarachi");
		data_output.write(msg.getBytes("UTF-8"));
	}
	/*if(serial_port.isOpen()) {
		serial_port.closePort();
		System.out.println("closed successfully");
	};*/
	

}

public static void gone() throws IOException {
	
	SerialPort[] get_port=SerialPort.getCommPorts();
	
	SerialPort port=get_port[1];
		serial_port=SerialPort.getCommPort(port.getSystemPortName());
		
			 if(serial_port.openPort()) {
			System.out.println("opentosuccessfully");
		}else {
			System.out.println("Failed to open ");
		}
	
	serial_port.setBaudRate(9600);
	//InputStream input_stream=serial_port.getInputStream();
	
	OutputStream output_stream=serial_port.getOutputStream();
	DataOutputStream data_output = new DataOutputStream(output_stream);
	boolean i=true;
	while( i) {
		/*char msg=(char)input_stream.read();
		a+=msg;
		System.out.print(a);
		Scanner txt=new Scanner(System.in);
		String msg=txt.nextLine();*/
		
		String msg="1";
		i=false;
		System.out.println(msg+"  oru muyarachi");
		data_output.write(msg.getBytes("UTF-8"));
	}
	if(serial_port.isOpen()) {
		
		serial_port.closePort();
		System.out.println("closed successfully");
	};
	

}
}
