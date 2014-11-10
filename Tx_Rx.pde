/*
  Processing sketch to run with this example
 =====================================================
 // Processing UDP example to send and receive string data from Arduino 
 // press any key to send the "Hello Arduino" message
 */

import hypermedia.net.*;
UDP udp;  // define the UDP object

import controlP5.*;
ControlP5 togle;
int col = color(255);

boolean toggleValue = false;


void I_Tx_Rx() {
  udp = new UDP( this, 6000 );  // create a new datagram connection on port 6000
  //udp.log( true );     // <-- printout the connection activity
  udp.listen( true );           // and wait for incoming message
}

void D_tx(String ip,int port,String texto ){
 println("Envio: "+texto+" ","Ip:  "+ip);
 udp.send(texto,ip,port);
 tx2=false;
}

void D_Rx(byte[] data){
   //void receive( byte[] data, String ip, int port ) {  // <-- extended handler
 for(int i=0; i < data.length; i++) 
 print(char(data[i]));  
 println(); 
}

 void receive( byte[] data ) {       // <-- default handler
 //void receive( byte[] data, String ip, int port ) {  // <-- extended handler
 
 for(int i=0; i < data.length; i++) 
 print(char(data[i]));  
 println();   
 }
 
