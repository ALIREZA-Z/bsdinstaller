--
-- This file contains FreeBSD-specific overrides to BSDInstaller.lua
--

os = {
	name = "FreeBSD",
	version = "10.3"
}

install_items = {
	"COPYRIGHT",
	"bin",
	"boot",
	"compat",	-- XXX not sure about this.
	"dev",
	"dist",
	"entropy",
	"etc",		-- XXX { src = "etc.hdd", dest = "etc" },
	"lib",
	"libexec",
	"rescue",
	"root",
	"sbin",
	"sys",		-- XXX What's the deal with this anyway?
	"usr/bin",
	"usr/games",
	"usr/include",
	"usr/lib",
	"usr/libdata",
	"usr/libexec",
	"usr/sbin",
	"usr/share",
	"usr/src",
	"var"
}

sysids = {
	{ "FreeBSD",		165 },
	{ "OpenBSD",		166 },
	{ "NetBSD",		169 },
	{ "MS-DOS",		 15 },
	{ "Linux",		131 },
	{ "Plan9",		 57 }
}

default_sysid = 165
package_suffix = "txz"
num_subpartitions = 8
has_raw_devices = false
disklabel_on_disk = false
window_subpartitions = { "c" }
use_cpdup = false

--
-- Offlimits mount points.  BSDInstaller will ignore these mount points
--
-- example: offlimits_mounts  = { "unionfs" }
offlimits_mounts = { }
