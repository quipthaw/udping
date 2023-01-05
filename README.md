
This project contains a program that uses User Datagram Protocol (UDP) to act as a network echo client and server pair.

Ping Program (client): This program creates an array, sends it using UDP to the server, and waits to receive a modified version of the array from the server. After the communication has completed, the program prints the elapsed time for the communication round trip.

More specifically, the program:

creates a char array of N elements, where N may be specified as a command-line option.
uses getaddrinfo() to get the IP address, port number, etc. of the pong server (using IPv4 for network protocols)
calls socket() using the information returned from getaddrinfo()
loops over the number of ping packets to be sent.
computes the total and average times spent communicating
Loop for ping packets does the following:

sends the array elements in a single packet to the pong server
waits to receive the reply from the pong server
validate the results sent from the pong server
prints out the round-trip time
Pong Program (server): After startup, the program listens for UDP ping packets from the client program. Once the packet has been received, it modifies the values slightly and sends back the new array.

uses getaddrinfo() to get the information needed to create an IPv4 UDP server socket to listen on any available address on a port number (specified through the command line).
calls socket() using the information returned from getaddrinfo().
calls bind() to have the socket listen for incoming packets
loops over the number of ping packets received.
Loop for ping packets does the following:

receives the array elements in a single packet from the ping client
adds 1 to every element in the array
sends the array back in a UDP packet to the ping client
