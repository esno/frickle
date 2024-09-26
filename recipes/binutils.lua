pkg.name = "binutils"
pkg.version = "2.43.1"

pkg.scm = {
  git = {{
    remote = "git://sourceware.org/git/binutils-gdb.git",
    rev = string.format("%s-%s_%s_%s", pkg.name, pkg.major, pkg.minor, pkg.patch)
  }}
}

S = string.format("%s/binutils-gdb", W)

pkg.prepare = {
  string.format("./configure --prefix=%s/usr --with-sysroot=%s/sysroot --target=%s --disable-nls --enable-gprofng=no --disable-werror --enable-new-dtags --enable-default-hash-style=gnu",
    D, W, cc.target)
}

pkg.build = {
  "make -j16"
}

pkg.install = {
  "make install"
}
