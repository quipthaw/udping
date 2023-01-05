default:
	gcc -pthread -o udping udping.c
srvr:
	./udping -S -p 50000
clnt:
	./udping -c 20 -s 300 -i 0.01 -p 50000 127.0.0.1
def_srvr:
	./udping -S
def_clnt:
	./udping 127.0.0.1