require "./types"
require "../time"

lib LibC
  S_IFMT   = 0xF000
  S_IFBLK  = 0x6000
  S_IFCHR  = 0x2000
  S_IFIFO  = 0x1000
  S_IFREG  = 0x8000
  S_IFDIR  = 0x4000
  S_IFLNK  = 0xA000
  S_IFSOCK = 0xC000
  S_IRUSR  = 0o400
  S_IWUSR  = 0o200
  S_IXUSR  = 0o100
  S_IRWXU  = 0o400 | 0o200 | 0o100
  S_IRGRP  = 0o0040
  S_IWGRP  = 0o00020
  S_IXGRP  = 0o00010
  S_IRWXG  = 0o00070
  S_IROTH  = 0o00004
  S_IWOTH  = 0o00002
  S_IXOTH  = 0o00001
  S_IRWXO  = 0o00007
  S_ISUID  = 0x800
  S_ISGID  = 0x400
  S_ISVTX  = 0x200

  struct Stat
    st_dev : DevT
    st_ino : InoT
    st_mode : ModeT
    st_nlink : NlinkT
    st_uid : UidT
    st_gid : GidT
    st_rdev : DevT
    st_size : OffT
    st_atim : Timespec
    st_mtim : Timespec
    st_ctim : Timespec
    st_blksize : BlksizeT
    st_blocks : BlkcntT
  end

  fun chmod(file : Char*, mode : ModeT) : Int
  fun fstat(fd : Int, buf : Stat*) : Int
  fun lstat(file : Char*, buf : Stat*) : Int
  fun mkdir(path : Char*, mode : ModeT) : Int
  fun mkfifo(path : Char*, mode : ModeT) : Int
  fun mknod(path : Char*, mode : ModeT, dev : DevT) : Int
  fun stat(file : Char*, buf : Stat*) : Int
  fun umask(mask : ModeT) : ModeT
end
