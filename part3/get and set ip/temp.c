#include <stdio.h>
#include <string.h>
#include <unistd.h>

#include <arpa/inet.h>
#include <errno.h>
#include <net/if.h>
#include <netdb.h>
#include <netinet/in.h>
#include <stdlib.h>
#include <sys/ioctl.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <unistd.h>

int main() {
  unsigned char ip_address[15];
  int fd;
  struct ifreq ifr;
  struct sockaddr_in *addr;
  fd = socket(AF_INET, SOCK_DGRAM, 0);

  ifr.ifr_addr.sa_family = AF_INET;

  memcpy(ifr.ifr_name, "wlo1", IFNAMSIZ - 1);

  addr = (struct sockaddr_in *)&ifr.ifr_addr;

  memset((unsigned char *)ip_address, 0x20, 15);
  ioctl(fd, SIOCGIFADDR, &ifr);
  strcpy(ip_address,inet_ntoa(((struct sockaddr_in *)&ifr.ifr_addr)->sin_addr));

  printf("IP address : %s\n",ip_address);

  printf("Enter new Ip Address: ");
  scanf("%s", ip_address);

  inet_pton(AF_INET, ip_address, &addr->sin_addr);

  ioctl(fd, SIOCSIFADDR, &ifr);
  close(fd);

  printf("IP Address updated sucessfully.\n");
  memset((unsigned char *)ip_address, 0x20, 15);
  ioctl(fd, SIOCGIFADDR, &ifr);
  strcpy(ip_address,inet_ntoa(((struct sockaddr_in *)&ifr.ifr_addr)->sin_addr));

  printf("Updated IP Address is: %s\n", ip_address);

  return 0;
}