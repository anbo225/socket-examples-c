EXECUTABLE = showip simple_stream_client simple_stream_server simple_datagram_client simple_datagram_server \
				select_server

all: $(EXECUTABLE)

showip: src/showip.c
	gcc -o showip src/showip.c
	
simple_stream_client: src/simple_stream_client.c
	gcc -o simple_stream_client src/simple_stream_client.c

simple_stream_server: src/simple_stream_server.c
	gcc -o simple_stream_server src/simple_stream_server.c
	
simple_datagram_client: src/simple_datagram_client.c
	gcc -o simple_datagram_cient src/simple_datagram_client.c

simple_datagram_server: src/simple_datagram_server.c
	gcc -o simple_datagram_server src/simple_datagram_server.c

select_server: src/select_server.c
	gcc -o select_server  src/select_server.c
	
clean:
	rm -rf  $(EXECUTABLE)