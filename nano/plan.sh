pkg_name=nano
pkg_origin=core
pkg_version="2.9.8"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=("GPL-3.0-or-later")
pkg_description="GNU nano -- an enhanced clone of the Pico text editor."
pkg_upstream_url="https://www.nano-editor.org"
pkg_source="https://www.nano-editor.org/dist/v2.9/${pkg_name}-${pkg_version}.tar.xz"
pkg_shasum="c2deac31ba4d3fd27a42fafcc47ccf499296cc69a422bbecab63f2933ea85488"
pkg_deps=(core/ncurses)
pkg_build_deps=(core/make core/gcc)
pkg_bin_dirs=(bin)

do_build() {
  do_default_build
  install -v -Dm644 COPYING "${pkg_prefix}/share/COPYING"
}
