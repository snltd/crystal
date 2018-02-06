require "./sys/types"
require "./sys/stat"
require "./unistd"

lib LibC
  F_GETFD    =        1
  F_SETFD    =        2
  F_GETFL    =        3
  F_SETFL    =        4
  FD_CLOEXEC =        1
  O_CLOEXEC  = 0x800000
  O_CREAT    =   0x0100
  O_NOFOLLOW =  0x20000
  O_TRUNC    =   0x0200
  O_APPEND   =     0x08
  O_NONBLOCK =     0x80
  O_SYNC     =     0x10
  O_RDONLY   =        0
  O_RDWR     =        2
  O_WRONLY   =        1

  struct Flock
    l_type : Int16T
    l_start : Off32T
    l_len : Off32T
    l_pid : Pid32T
    l_type : Short
    l_whence : Int16T
    l_sysid : Int32T
  end

  fun fcntl(x0 : Int, x1 : Int, ...) : Int
  fun open(x0 : Char*, x1 : Int, ...) : Int
end
