# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Get your IO right on the first try"
HOMEPAGE="https://github.com/serokell/haskell-with-utf8#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MPL-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="troubleshoot-exe"

PATCHES=( "${FILESDIR}/${P}-add-troubleshoot-exe-flag.patch" )

RDEPEND=">=dev-haskell/safe-exceptions-0.1:=[profile?] <dev-haskell/safe-exceptions-0.2:=[profile?]
	>=dev-haskell/text-0.7:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	troubleshoot-exe? ( >=dev-haskell/th-env-0.1.0.0:=[profile?] <dev-haskell/th-env-0.2:=[profile?] )
"

# Tests fail without the tasty-discover executable installed
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/hedgehog
		dev-haskell/hunit
		dev-haskell/tasty
		dev-haskell/tasty-discover
		dev-haskell/tasty-hedgehog
		dev-haskell/tasty-hunit
		dev-haskell/temporary )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag troubleshoot-exe troubleshoot-exe)
}
