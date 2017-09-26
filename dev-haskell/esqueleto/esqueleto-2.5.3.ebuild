# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.3
#hackport: flags: -mysql,-postgresql

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Type-safe EDSL for SQL queries on persistent backends"
HOMEPAGE="https://github.com/bitemyapp/esqueleto"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/blaze-html:=[profile?]
	>=dev-haskell/conduit-1.1:=[profile?]
	dev-haskell/monad-logger:=[profile?]
	>=dev-haskell/persistent-2.5:=[profile?] <dev-haskell/persistent-2.8:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?]
	>=dev-haskell/tagged-0.2:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/hspec-1.8
		dev-haskell/hunit
		dev-haskell/monad-control
		>=dev-haskell/monad-logger-0.3
		>=dev-haskell/persistent-sqlite-2.1.3
		>=dev-haskell/persistent-template-2.1
		dev-haskell/quickcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-mysql \
		--flag=-postgresql
}
