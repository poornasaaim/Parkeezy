package embed;


import jssc.SerialPort;
import jssc.SerialPortEvent;
import jssc.SerialPortException;
import jssc.SerialPortList;

public class embedd {
	
static String s;		embedd as;
public static String r;
public static String j;
	public void connect() {
		
String portlist[] = SerialPortList.getPortNames();
	
		for(int i =0; i<portlist.length;i++) {
			
		}

		 SerialPort port = new SerialPort("COM4");
		
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
				
				
			System.out.println("embedd"+r);
			
					
						} catch (SerialPortException e) {
						
						e.printStackTrace();
					}
					
					
				
				}
			});
			
			
		} catch (SerialPortException e) {
			
			e.printStackTrace();
		}
		
			
			
			
			
			
			
			
	}
	
	
	
public static boolean toclose() {
	r="";
	System.out.println("r :"+r);
	return true;
}


    public static void sending() {
        SerialPort serialPort = new SerialPort("COM3");

        try {
            serialPort.openPort();

            serialPort.setParams(SerialPort.BAUDRATE_9600,
                    SerialPort.DATABITS_8,
                    SerialPort.STOPBITS_1,
                    SerialPort.PARITY_NONE);

            serialPort.setFlowControlMode(SerialPort.FLOWCONTROL_RTSCTS_IN
                    | SerialPort.FLOWCONTROL_RTSCTS_OUT);
          int i=0;  
while(i==0) {
         i++;
        System.out.println("String sent: " + serialPort.writeString("@"));
        serialPort.closePort();
        
}} catch (SerialPortException ex) {
            System.out.println("There is an error on writing string to port: " + ex);
        }
    }
    
    public static void send(String a) {
    	System.out.println("sending data:"+a);
        SerialPort serialPort = new SerialPort("COM3");

        try {
            serialPort.openPort();

            serialPort.setParams(SerialPort.BAUDRATE_9600,
                    SerialPort.DATABITS_8,
                    SerialPort.STOPBITS_1,
                    SerialPort.PARITY_NONE);

            serialPort.setFlowControlMode(SerialPort.FLOWCONTROL_RTSCTS_IN
                    | SerialPort.FLOWCONTROL_RTSCTS_OUT);
          int i=0;  
while(i==0) {
         i++;
        System.out.println("String sent: " + serialPort.writeString(a));
        serialPort.closePort();
        
}} catch (SerialPortException ex) {
            System.out.println("There is an error on writing string to port: " + ex);
        }
    }
    
    
    
    
    
    
    public static void deactivate() {
        SerialPort serialPort = new SerialPort("COM4");

        try {
            serialPort.openPort();

            serialPort.setParams(SerialPort.BAUDRATE_9600,
                    SerialPort.DATABITS_8,
                    SerialPort.STOPBITS_1,
                    SerialPort.PARITY_NONE);

            serialPort.setFlowControlMode(SerialPort.FLOWCONTROL_RTSCTS_IN
                    | SerialPort.FLOWCONTROL_RTSCTS_OUT);
          int i=0;  
while(i==0) {
         i++;
        System.out.println("String sent: " + serialPort.writeString("$"));
        serialPort.closePort();
        
}} catch (SerialPortException ex) {
            System.out.println("There is an error on writing string to port: " + ex);
        }
    }
    public static void main() {
    	
    	
    }
}


 