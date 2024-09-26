pkg.name = "gcc"
pkg.version = "14.2.0"

pkg.scm = {
  git = {
    {
      remote = "git://gcc.gnu.org/git/gcc.git",
      rev = string.format("releases/%s-%s", pkg.name, pkg.version)
    },
    {
      remote = "https://gitlab.inria.fr/mpfr/mpfr.git",
      rev = "4.2.1", dir = string.format("%s/mpfr", S)
    }
  }
}
