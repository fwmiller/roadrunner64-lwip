##############################################################################
#
# Directories
#
SRC		:= src
INC		:= -I$(SRC)/include -I../roadrunner64/include
BUILD		:= build
BIN		:= $(BUILD)/obj

##############################################################################
#
# Tools
#
MKDIR		:= mkdir -p
CC		:= gcc
LD		:= gcc
CP		:= cp
RM		:= rm -fr

##############################################################################
#
# Tool options
#
CFLAGS		:= -c -m64 -Og -nostdinc -ffreestanding
#CFLAGS		:= -Wall
#CFLAGS		+= -g

##############################################################################
#
# Rules
#

NC	:= \033[0m
BLACK	:= \033[0;30m
RED	:= \033[0;31m
GREEN	:= \033[0;32m
YELLOW	:= \033[0;33m
BLUE	:= \033[0;34m
PURPLE	:= \033[0;35m
CYAN	:= \033[0;36m
WHITE	:= \033[0;37m

.PHONY: clean debug

OBJS := acd.o altcp_alloc.o altcp.o altcp_tcp.o api_lib.o api_msg.o autoip.o def.o dhcp6.o dhcp.o dns.o err.o etharp.o ethernet.o ethip6.o icmp6.o icmp.o if_api.o igmp.o inet6.o inet_chksum.o init.o ip4_addr.o ip4_frag.o ip4.o ip6_addr.o ip6_frag.o ip6.o ip.o mem.o memp.o mld6.o nd6.o netbuf.o netdb.o netifapi.o netif.o pbuf.o raw.o sockets.o stats.o sys.o tcp_in.o tcpip.o tcp.o tcp_out.o timeouts.o udp.o

all:
	$(MKDIR) $(BUILD)
	$(MKDIR) $(BIN)
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/ethernet.o $(SRC)/netif/ethernet.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/init.o $(SRC)/core/init.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/def.o $(SRC)/core/def.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/dns.o $(SRC)/core/dns.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/inet_chksum.o $(SRC)/core/inet_chksum.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/ip.o $(SRC)/core/ip.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/mem.o $(SRC)/core/mem.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/memp.o $(SRC)/core/memp.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/netif.o $(SRC)/core/netif.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/pbuf.o $(SRC)/core/pbuf.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/raw.o $(SRC)/core/raw.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/stats.o $(SRC)/core/stats.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/sys.o $(SRC)/core/sys.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/altcp.o $(SRC)/core/altcp.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/altcp_alloc.o $(SRC)/core/altcp_alloc.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/altcp_tcp.o $(SRC)/core/altcp_tcp.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/tcp.o $(SRC)/core/tcp.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/tcp_in.o $(SRC)/core/tcp_in.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/tcp_out.o $(SRC)/core/tcp_out.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/timeouts.o $(SRC)/core/timeouts.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/udp.o $(SRC)/core/udp.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/acd.o $(SRC)/core/ipv4/acd.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/autoip.o $(SRC)/core/ipv4/autoip.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/dhcp.o $(SRC)/core/ipv4/dhcp.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/etharp.o $(SRC)/core/ipv4/etharp.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/icmp.o $(SRC)/core/ipv4/icmp.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/igmp.o $(SRC)/core/ipv4/igmp.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/ip4_frag.o $(SRC)/core/ipv4/ip4_frag.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/ip4.o $(SRC)/core/ipv4/ip4.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/ip4_addr.o $(SRC)/core/ipv4/ip4_addr.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/dhcp6.o $(SRC)/core/ipv6//dhcp6.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/ethip6.o $(SRC)/core/ipv6//ethip6.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/icmp6.o $(SRC)/core/ipv6//icmp6.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/inet6.o $(SRC)/core/ipv6//inet6.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/ip6.o $(SRC)/core/ipv6//ip6.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/ip6_addr.o $(SRC)/core/ipv6//ip6_addr.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/ip6_frag.o $(SRC)/core/ipv6//ip6_frag.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/mld6.o $(SRC)/core/ipv6//mld6.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/nd6.o $(SRC)/core/ipv6//nd6.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/api_lib.o $(SRC)/api/api_lib.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/api_msg.o $(SRC)/api/api_msg.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/err.o $(SRC)/api/err.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/if_api.o $(SRC)/api/if_api.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/netbuf.o $(SRC)/api/netbuf.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/netdb.o $(SRC)/api/netdb.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/netifapi.o $(SRC)/api/netifapi.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/sockets.o $(SRC)/api/sockets.c
	$(CC) $(CFLAGS) $(INC) -o $(BIN)/tcpip.o $(SRC)/api/tcpip.c
	cd build/obj; ar -rc ../liblwip.a $(OBJS)

clean:
	$(RM) $(BUILD)

debug:
	@for f in $(C_SRCS); do echo $$f; done
	@echo
	@for f in $(OBJS); do echo $$f; done
