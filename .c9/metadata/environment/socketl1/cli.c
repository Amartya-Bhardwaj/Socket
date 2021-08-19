{"filter":false,"title":"cli.c","tooltip":"/socketl1/cli.c","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":40,"column":0},"action":"insert","lines":["#include <stdio.h>","#include <sys/socket.h>","#include <arpa/inet.h>","#include <unistd.h>","#include <string.h>","#define PORT 8080","","int main(int argc, char const *argv[])","{","\tint sock = 0, valread;","\tstruct sockaddr_in serv_addr;","\tchar *hello = \"Hello from client\";","\tchar buffer[1024] = {0};","\tif ((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0)","\t{","\t\tprintf(\"\\n Socket creation error \\n\");","\t\treturn -1;","\t}","","\tserv_addr.sin_family = AF_INET;","\tserv_addr.sin_port = htons(PORT);","\t","\t// Convert IPv4 and IPv6 addresses from text to binary form","\tif(inet_pton(AF_INET, \"127.0.0.1\", &serv_addr.sin_addr)<=0)","\t{","\t\tprintf(\"\\nInvalid address/ Address not supported \\n\");","\t\treturn -1;","\t}","","\tif (connect(sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0)","\t{","\t\tprintf(\"\\nConnection Failed \\n\");","\t\treturn -1;","\t}","\tsend(sock , hello , strlen(hello) , 0 );","\tprintf(\"Hello message sent\\n\");","\tvalread = read( sock , buffer, 1024);","\tprintf(\"%s\\n\",buffer );","\treturn 0;","}",""],"id":1}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":4,"column":19},"end":{"row":4,"column":19},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1629354414207,"hash":"ee0efd337505a76aacc69d0bdf4ce9d34fe9c024"}