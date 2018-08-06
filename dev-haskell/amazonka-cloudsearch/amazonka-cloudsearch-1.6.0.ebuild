# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Amazon CloudSearch SDK"
HOMEPAGE="https://github.com/brendanhay/amazonka"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MPL-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/amazonka-core-1.6.0:=[profile?] <dev-haskell/amazonka-core-1.6.1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/amazonka-test-1.6.0 <dev-haskell/amazonka-test-1.6.1
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/text
		dev-haskell/unordered-containers )
"
