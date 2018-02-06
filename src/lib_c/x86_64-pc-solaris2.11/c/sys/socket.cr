require "./types"

lib LibC
  SOCK_DGRAM     =  1
  SOCK_RAW       =  4
  SOCK_SEQPACKET =  6
  SOCK_STREAM    =  2
  SOL_SOCKET     =  0xffff
  SO_BROADCAST   =  0x0020
  SO_KEEPALIVE   =  0x0008
  SO_LINGER      = 0x0080
  SO_RCVBUF      =  0x1002
  SO_REUSEADDR   =  0x0004
  SO_REUSEPORT   = 0x2004
  SO_SNDBUF      =  0x1001
  PF_INET        =  LibC::PF_ANET
  PF_INET6       =  LibC::PF_ANET6
  PF_UNIX        = LibC::AF_UNIX
  PF_UNSPEC      = 0
  PF_LOCAL       = LIBC::PF_UNIX
  AF_INET        = 2
  AF_INET6       = 26
  AF_UNIX        = 1
  AF_UNSPEC      = 0
  AF_LOCAL       = LibC::AF_UNIX
  SHUT_RD        =      0
  SHUT_RDWR      =      2
  SHUT_WR        =      1
  SOCK_CLOEXEC   = 0x080000

  alias SocklenT = UInt
  alias SaFamilyT = UShort

  struct Sockaddr
    sa_family : SaFamilyT
    sa_data : StaticArray(Char, 14)
  end

  struct SockaddrStorage
    ss_family : SaFamilyT
    __ss_align : ULong
    __ss_padding : StaticArray(Char, 120)
  end

  struct Linger
    l_onoff : Int
    l_linger : Int
  end

  fun accept(fd : Int, addr : Sockaddr*, addr_len : SocklenT*) : Int
  fun bind(fd : Int, addr : Sockaddr*, len : SocklenT) : Int
  fun connect(fd : Int, addr : Sockaddr*, len : SocklenT) : Int
  fun getpeername(fd : Int, addr : Sockaddr*, len : SocklenT*) : Int
  fun getsockname(fd : Int, addr : Sockaddr*, len : SocklenT*) : Int
  fun getsockopt(fd : Int, level : Int, optname : Int, optval : Void*, optlen : SocklenT*) : Int
  fun listen(fd : Int, n : Int) : Int
  fun recv(fd : Int, buf : Void*, n : SizeT, flags : Int) : SSizeT
  fun recvfrom(fd : Int, buf : Void*, n : Int, flags : Int, addr : Sockaddr*, addr_len : SocklenT*) : SSizeT
  fun send(fd : Int, buf : Void*, n : SizeT, flags : Int) : SSizeT
  fun sendto(fd : Int, buf : Void*, n : SizeT, flags : Int, addr : Sockaddr*, addr_len : Int) : SSizeT
  fun setsockopt(fd : Int, level : Int, optname : Int, optval : Void*, optlen : Int) : Int
  fun shutdown(fd : Int, how : Int) : Int
  fun socket(domain : Int, type : Int, protocol : Int) : Int
  fun socketpair(domain : Int, type : Int, protocol : Int, fds : StaticArray(Int, 2)) : Int
end
