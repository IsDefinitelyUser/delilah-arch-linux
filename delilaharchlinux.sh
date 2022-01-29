# | Delilah Arch Linux | proot-distro | termux |
# This is a custom Arch distribution plug-in.
# It is meant for use with termux using proot-distro.
# Included packages:
# • git
# • youtube-dl
# ...and soon, there will be more!! :-) :-)

DISTRO_NAME="Delilah Arch Linux"

DISTRO_COMMENT="Customized Arch build for use with proot-distro on 	Termux. It includes commands such as: youtube-dl for streamimg (or whatever), git for cloning repos."

TARBALL_URL['aarch64']="https://github.com/termux/proot-distro/releases/download/v1.10.1/archlinux-aarch64-pd-v1.10.1.tar.xz"
TARBALL_SHA256['aarch64']="0faef6f391a367424eec971ca256a2f980576283f6b67235eb04e47fefc90e0c"
TARBALL_URL['arm']="https://github.com/termux/proot-distro/releases/download/v1.10.1/archlinux-arm-pd-v1.10.1.tar.xz"
TARBALL_SHA256['arm']="5b35f8158d6c37b9e6cb13e1753afd5c2b480d6297b73a39b24c2065a2931f67"
TARBALL_URL['i686']="https://github.com/termux/proot-distro/releases/download/v1.10.1/archlinux-i686-pd-v1.10.1.tar.xz"
TARBALL_SHA256['i686']="272756b993b903fe894aa9d9588e221673b7dbbb3e63ff867b95203b49a5a5a6"
TARBALL_URL['x86_64']="https://github.com/termux/proot-distro/releases/download/v1.10.1/archlinux-x86_64-pd-v1.10.1.tar.xz"
TARBALL_SHA256['x86_64']="7bc126d4e13af10be7b9ff2ae3041dee532f8c7c978f82e8163df4937d73a0f4"

# This function defines any additional steps that should be executed during
# installation. You can use "run_proot_cmd" to execute a given command in
# proot environment.

distro_setup() {
	echo && echo
	echo " |«∆∆∆»| Delilah  Arch   Linux |«∆∆∆»| "
	echo "  |»∆«|  proot-distro – termux  |»∆«| "
	echo "    \                             / "
	echo "  |«∆∆∆»|  Package   Manager  |«∆∆∆»| "
	echo "   |»∆«|        pacman         |»∆«| "
	echo && echo
	run_proot_cmd pacman --noconfirm -Syu
	run_proot_cmd pacman -Syu --ignore sudo base-devel
	run_proot_cmd pacman -S --noconfirm git curl wget
	run_proot_cmd curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
	run_proot_cmd chmod a+rx /usr/local/bin/youtube-dl
}
