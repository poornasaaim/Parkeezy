package embed;


import jssc.SerialPort;
import jssc.SerialPortEvent;
import jssc.SerialPortException;
import jssc.SerialPortList;

public class embeddd {
	
String s;		embedd as;
public static String r;
	public void connect() {
		
String portlist[] = SerialPortList.getPortNames();
	
		for(int i =0; i<portlist.length;i++) {
			
		}

		SerialPort port = new SerialPort(portlist[0]);
		
		try {
			
			
			port.openPort();
			
			port.setParams(
					
					SerialPort.BAUDRATE_9600,
					SerialPort.DATABITS_8,
					SerialPort.STOPBITS_1,
					SerialPort.PARITY_NONE
					);
			r="";
			port.addEventListener((SerialPortEvent event)->{
				
				if(event.isRXCHAR()) {
					
					try {
						
						
						 s = port.readString();
						
						r=r+s;
				
				
			
			
					
						} catch (SerialPortException e) {
						
						e.printStackTrace();
					}
					
					
				
				}
			});
			
			
			
		} catch (SerialPortException e) {
			
			e.printStackTrace();
		}
		
			
			
			
			
			
			
			
	}

	
}
 