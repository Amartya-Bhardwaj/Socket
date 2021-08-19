{"changed":true,"filter":false,"title":"dynamicC.s","tooltip":"/socketl2/dynamicC.s","value":"#include <netdb.h>\n#include <stdio.h>\n#include <stdlib.h>\n#include <string.h>\n#include <sys/socket.h>\n#define MAX 80\n#define PORT 8080\n#define SA struct sockaddr\nvoid func(int sockfd)\n{\n\tchar buff[MAX];\n\tint n;\n\tfor (;;) {\n\t\tbzero(buff, sizeof(buff));\n\t\tprintf(\"Enter the string : \");\n\t\tn = 0;\n\t\twhile ((buff[n++] = getchar()) != '\\n')\n\t\t\t;\n\t\twrite(sockfd, buff, sizeof(buff));\n\t\tbzero(buff, sizeof(buff));\n\t\tread(sockfd, buff, sizeof(buff));\n\t\tprintf(\"From Server : %s\", buff);\n\t\tif ((strncmp(buff, \"exit\", 4)) == 0) {\n\t\t\tprintf(\"Client Exit...\\n\");\n\t\t\tbreak;\n\t\t}\n\t}\n}\n\nint main()\n{\n\tint sockfd, connfd;\n\tstruct sockaddr_in servaddr, cli;\n\n\t// socket create and varification\n\tsockfd = socket(AF_INET, SOCK_STREAM, 0);\n\tif (sockfd == -1) {\n\t\tprintf(\"socket creation failed...\\n\");\n\t\texit(0);\n\t}\n\telse\n\t\tprintf(\"Socket successfully created..\\n\");\n\tbzero(&servaddr, sizeof(servaddr));\n\n\t// assign IP, PORT\n\tservaddr.sin_family = AF_INET;\n\tservaddr.sin_addr.s_addr = inet_addr(\"127.0.0.1\");\n\tservaddr.sin_port = htons(PORT);\n\n\t// connect the client socket to server socket\n\tif (connect(sockfd, (SA*)&servaddr, sizeof(servaddr)) != 0) {\n\t\tprintf(\"connection with the server failed...\\n\");\n\t\texit(0);\n\t}\n\telse\n\t\tprintf(\"connected to the server..\\n\");\n\n\t// function for chat\n\tfunc(sockfd);\n\n\t// close the socket\n\tclose(sockfd);\n}\n","undoManager":{"mark":0,"position":2,"stack":[[{"start":{"row":0,"column":0},"end":{"row":63,"column":0},"action":"insert","lines":["#include <netdb.h>","#include <stdio.h>","#include <stdlib.h>","#include <string.h>","#include <sys/socket.h>","#define MAX 80","#define PORT 8080","#define SA struct sockaddr","void func(int sockfd)","{","\tchar buff[MAX];","\tint n;","\tfor (;;) {","\t\tbzero(buff, sizeof(buff));","\t\tprintf(\"Enter the string : \");","\t\tn = 0;","\t\twhile ((buff[n++] = getchar()) != '\\n')","\t\t\t;","\t\twrite(sockfd, buff, sizeof(buff));","\t\tbzero(buff, sizeof(buff));","\t\tread(sockfd, buff, sizeof(buff));","\t\tprintf(\"From Server : %s\", buff);","\t\tif ((strncmp(buff, \"exit\", 4)) == 0) {","\t\t\tprintf(\"Client Exit...\\n\");","\t\t\tbreak;","\t\t}","\t}","}","","int main()","{","\tint sockfd, connfd;","\tstruct sockaddr_in servaddr, cli;","","\t// socket create and varification","\tsockfd = socket(AF_INET, SOCK_STREAM, 0);","\tif (sockfd == -1) {","\t\tprintf(\"socket creation failed...\\n\");","\t\texit(0);","\t}","\telse","\t\tprintf(\"Socket successfully created..\\n\");","\tbzero(&servaddr, sizeof(servaddr));","","\t// assign IP, PORT","\tservaddr.sin_family = AF_INET;","\tservaddr.sin_addr.s_addr = inet_addr(\"127.0.0.1\");","\tservaddr.sin_port = htons(PORT);","","\t// connect the client socket to server socket","\tif (connect(sockfd, (SA*)&servaddr, sizeof(servaddr)) != 0) {","\t\tprintf(\"connection with the server failed...\\n\");","\t\texit(0);","\t}","\telse","\t\tprintf(\"connected to the server..\\n\");","","\t// function for chat","\tfunc(sockfd);","","\t// close the socket","\tclose(sockfd);","}",""],"id":1}],[{"start":{"row":0,"column":0},"end":{"row":63,"column":0},"action":"remove","lines":["#include <netdb.h>","#include <stdio.h>","#include <stdlib.h>","#include <string.h>","#include <sys/socket.h>","#define MAX 80","#define PORT 8080","#define SA struct sockaddr","void func(int sockfd)","{","\tchar buff[MAX];","\tint n;","\tfor (;;) {","\t\tbzero(buff, sizeof(buff));","\t\tprintf(\"Enter the string : \");","\t\tn = 0;","\t\twhile ((buff[n++] = getchar()) != '\\n')","\t\t\t;","\t\twrite(sockfd, buff, sizeof(buff));","\t\tbzero(buff, sizeof(buff));","\t\tread(sockfd, buff, sizeof(buff));","\t\tprintf(\"From Server : %s\", buff);","\t\tif ((strncmp(buff, \"exit\", 4)) == 0) {","\t\t\tprintf(\"Client Exit...\\n\");","\t\t\tbreak;","\t\t}","\t}","}","","int main()","{","\tint sockfd, connfd;","\tstruct sockaddr_in servaddr, cli;","","\t// socket create and varification","\tsockfd = socket(AF_INET, SOCK_STREAM, 0);","\tif (sockfd == -1) {","\t\tprintf(\"socket creation failed...\\n\");","\t\texit(0);","\t}","\telse","\t\tprintf(\"Socket successfully created..\\n\");","\tbzero(&servaddr, sizeof(servaddr));","","\t// assign IP, PORT","\tservaddr.sin_family = AF_INET;","\tservaddr.sin_addr.s_addr = inet_addr(\"127.0.0.1\");","\tservaddr.sin_port = htons(PORT);","","\t// connect the client socket to server socket","\tif (connect(sockfd, (SA*)&servaddr, sizeof(servaddr)) != 0) {","\t\tprintf(\"connection with the server failed...\\n\");","\t\texit(0);","\t}","\telse","\t\tprintf(\"connected to the server..\\n\");","","\t// function for chat","\tfunc(sockfd);","","\t// close the socket","\tclose(sockfd);","}",""],"id":2}],[{"start":{"row":0,"column":0},"end":{"row":63,"column":0},"action":"insert","lines":["#include <netdb.h>","#include <stdio.h>","#include <stdlib.h>","#include <string.h>","#include <sys/socket.h>","#define MAX 80","#define PORT 8080","#define SA struct sockaddr","void func(int sockfd)","{","\tchar buff[MAX];","\tint n;","\tfor (;;) {","\t\tbzero(buff, sizeof(buff));","\t\tprintf(\"Enter the string : \");","\t\tn = 0;","\t\twhile ((buff[n++] = getchar()) != '\\n')","\t\t\t;","\t\twrite(sockfd, buff, sizeof(buff));","\t\tbzero(buff, sizeof(buff));","\t\tread(sockfd, buff, sizeof(buff));","\t\tprintf(\"From Server : %s\", buff);","\t\tif ((strncmp(buff, \"exit\", 4)) == 0) {","\t\t\tprintf(\"Client Exit...\\n\");","\t\t\tbreak;","\t\t}","\t}","}","","int main()","{","\tint sockfd, connfd;","\tstruct sockaddr_in servaddr, cli;","","\t// socket create and varification","\tsockfd = socket(AF_INET, SOCK_STREAM, 0);","\tif (sockfd == -1) {","\t\tprintf(\"socket creation failed...\\n\");","\t\texit(0);","\t}","\telse","\t\tprintf(\"Socket successfully created..\\n\");","\tbzero(&servaddr, sizeof(servaddr));","","\t// assign IP, PORT","\tservaddr.sin_family = AF_INET;","\tservaddr.sin_addr.s_addr = inet_addr(\"127.0.0.1\");","\tservaddr.sin_port = htons(PORT);","","\t// connect the client socket to server socket","\tif (connect(sockfd, (SA*)&servaddr, sizeof(servaddr)) != 0) {","\t\tprintf(\"connection with the server failed...\\n\");","\t\texit(0);","\t}","\telse","\t\tprintf(\"connected to the server..\\n\");","","\t// function for chat","\tfunc(sockfd);","","\t// close the socket","\tclose(sockfd);","}",""],"id":3}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":8,"column":21},"end":{"row":8,"column":21},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1629358307229}