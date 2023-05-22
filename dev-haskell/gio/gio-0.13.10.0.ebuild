# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Binding to GIO"
HOMEPAGE="https://projects.haskell.org/gtk2hs/"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64"

GHC_BOOTSTRAP_PACKAGES=(
	gtk2hs-buildtools
)

RDEPEND=">=dev-haskell/glib-0.13.0.0:=[profile?] <dev-haskell/glib-0.14:=[profile?]
	>=dev-lang/ghc-8.8.1:=
	dev-libs/glib:2
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0 <dev-haskell/cabal-3.11
"
BDEPEND=">=dev-haskell/gtk2hs-buildtools-0.13.2.0 <dev-haskell/gtk2hs-buildtools-0.14
	virtual/pkgconfig
"
