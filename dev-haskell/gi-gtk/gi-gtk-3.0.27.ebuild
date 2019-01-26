# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Gtk bindings"
HOMEPAGE="https://github.com/haskell-gi/haskell-gi"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

# gtk_cell_accessible_parent_get_column_header_cells >=x11-libs/gtk+-3.24.3
RDEPEND=">=dev-haskell/gi-atk-2.0:=[profile?] <dev-haskell/gi-atk-2.1:=[profile?]
	>=dev-haskell/gi-cairo-1.0:=[profile?] <dev-haskell/gi-cairo-1.1:=[profile?]
	>=dev-haskell/gi-gdk-3.0:=[profile?] <dev-haskell/gi-gdk-3.1:=[profile?]
	>=dev-haskell/gi-gdkpixbuf-2.0:=[profile?] <dev-haskell/gi-gdkpixbuf-2.1:=[profile?]
	>=dev-haskell/gi-gio-2.0:=[profile?] <dev-haskell/gi-gio-2.1:=[profile?]
	>=dev-haskell/gi-glib-2.0:=[profile?] <dev-haskell/gi-glib-2.1:=[profile?]
	>=dev-haskell/gi-gobject-2.0:=[profile?] <dev-haskell/gi-gobject-2.1:=[profile?]
	>=dev-haskell/gi-pango-1.0:=[profile?] <dev-haskell/gi-pango-1.1:=[profile?]
	>=dev-haskell/haskell-gi-0.21.1:=[profile?] <dev-haskell/haskell-gi-0.22:=[profile?]
	>=dev-haskell/haskell-gi-base-0.21:=[profile?] <dev-haskell/haskell-gi-base-0.22:=[profile?]
	<dev-haskell/haskell-gi-overloading-1.1:=[profile?]
	>=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-2:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	>=x11-libs/gtk+-3.24.3:3
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24
	virtual/pkgconfig
"
