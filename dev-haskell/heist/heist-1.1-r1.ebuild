# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="An Haskell template system supporting both HTML5 and XML"
HOMEPAGE="http://snapframework.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # tests fail with pandoc 2

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?]
	>=dev-haskell/attoparsec-0.10:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/blaze-builder-0.2:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/blaze-html-0.4:=[profile?] <dev-haskell/blaze-html-0.10:=[profile?]
	>=dev-haskell/directory-tree-0.10:=[profile?] <dev-haskell/directory-tree-0.13:=[profile?]
	>=dev-haskell/dlist-0.5:=[profile?] <dev-haskell/dlist-0.9:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/lifted-base-0.2:=[profile?] <dev-haskell/lifted-base-0.3:=[profile?]
	>=dev-haskell/map-syntax-0.3:=[profile?] <dev-haskell/map-syntax-0.4:=[profile?]
	>=dev-haskell/monad-control-0.3:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/random-1.0.1.0:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/semigroups-0.16:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/text-0.10:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-base-0.4:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/unordered-containers-0.1.4:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-haskell/xmlhtml-0.2.3.5:=[profile?] <dev-haskell/xmlhtml-0.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/bifunctors-5.3 <dev-haskell/bifunctors-5.6
		>=dev-haskell/hunit-1.2 <dev-haskell/hunit-2
		>=dev-haskell/lens-4.3
		>=dev-haskell/quickcheck-2
		>=dev-haskell/test-framework-0.4 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.2.7 <dev-haskell/test-framework-hunit-0.4
		>=dev-haskell/test-framework-quickcheck2-0.2.12.1 <dev-haskell/test-framework-quickcheck2-0.4 )
"

src_prepare() {
	default

	cabal_chdeps \
		'aeson                      >= 0.6     && < 1.4' 'aeson                      >= 0.6' \
		'base                       >= 4.5     && < 4.12' 'base                       >= 4.5' \
		'containers                 >= 0.2     && < 0.6' 'containers                 >= 0.2' \
		'QuickCheck                 >= 2        && < 2.12' 'QuickCheck                 >= 2' \
		'lens                       >= 4.3      && < 4.17' 'lens                       >= 4.3'
}
