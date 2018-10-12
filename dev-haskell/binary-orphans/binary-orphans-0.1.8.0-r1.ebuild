# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Orphan instances for binary"
HOMEPAGE="https://github.com/phadej/binary-orphans#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.7.0.6:=[profile?]
	>=dev-haskell/case-insensitive-1.2.0.4:=[profile?] <dev-haskell/case-insensitive-1.2.1:=[profile?]
	>=dev-haskell/hashable-1.2.3.3:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/nats-1:=[profile?] <dev-haskell/nats-1.2:=[profile?]
	>=dev-haskell/scientific-0.3.3.8:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/semigroups-0.16.2.2:=[profile?]
	>=dev-haskell/tagged-0.7.3:=[profile?] <dev-haskell/tagged-0.8.6:=[profile?]
	>=dev-haskell/text-1.2.0.6:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/text-binary-0.1.0:=[profile?] <dev-haskell/text-binary-0.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2.5.1:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.10.12.3:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-haskell/vector-binary-instances-0.2.1.0:=[profile?] <dev-haskell/vector-binary-instances-0.3:=[profile?]
	>=dev-haskell/void-0.7:=[profile?] <dev-haskell/void-0.8:=[profile?]
	>=dev-lang/ghc-7.6.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/quickcheck-2.10
		>=dev-haskell/quickcheck-instances-0.3.16 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/semigroups-0.16.2.2
		>=dev-haskell/tasty-0.10.1.2
		>=dev-haskell/tasty-quickcheck-0.8.3.2 )
"

src_prepare() {
	default

	cabal_chdeps \
		'base                     >=4.6.0.1   && <4.11' 'base                     >=4.6.0.1' \
		'aeson                    >=0.7.0.6   && <1.3' 'aeson                    >=0.7.0.6' \
		'binary                   >=0.5.1.1   && <0.8.6 || ==0.9.0.0' 'binary                   >=0.5.1.1   && <0.8.7 || ==0.9.0.0 || ==0.10.0.0' \
		'QuickCheck           >=2.10     && <2.11' 'QuickCheck           >=2.10' \
		'tasty                >=0.10.1.2 && <0.12' 'tasty                >=0.10.1.2' \
		'tasty-quickcheck     >=0.8.3.2  && <0.10' 'tasty-quickcheck     >=0.8.3'
}
