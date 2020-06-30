# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4.9999
#hackport: flags: +release,-freestanding,-ci,-execonly

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal toolchain-funcs

DESCRIPTION="Functional Programming Language with Dependent Types"
HOMEPAGE="https://www.idris-lang.org/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="ffi gmp"

RESTRICT=test # pulls stack

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?] <dev-haskell/aeson-1.5:=[profile?]
	>=dev-haskell/annotated-wl-pprint-0.7:=[profile?] <dev-haskell/annotated-wl-pprint-0.8:=[profile?]
	<dev-haskell/ansi-terminal-0.11:=[profile?]
	<dev-haskell/ansi-wl-pprint-0.7:=[profile?]
	<dev-haskell/async-2.3:=[profile?]
	<dev-haskell/base64-bytestring-1.2:=[profile?]
	>=dev-haskell/blaze-html-0.6.1.3:=[profile?] <dev-haskell/blaze-html-0.10:=[profile?]
	>=dev-haskell/blaze-markup-0.5.2.1:=[profile?] <dev-haskell/blaze-markup-0.10:=[profile?]
	>=dev-haskell/cheapskate-0.1.1.2:=[profile?] <dev-haskell/cheapskate-0.2:=[profile?]
	>=dev-haskell/code-page-0.1:=[profile?] <dev-haskell/code-page-0.3:=[profile?]
	>=dev-haskell/fingertree-0.1.4.1:=[profile?] <dev-haskell/fingertree-0.2:=[profile?]
	>=dev-haskell/fsnotify-0.2:=[profile?] <dev-haskell/fsnotify-0.4:=[profile?]
	>=dev-haskell/haskeline-0.7:=[profile?] <dev-haskell/haskeline-0.8:=[profile?]
	>=dev-haskell/ieee754-0.7:=[profile?] <dev-haskell/ieee754-0.9:=[profile?]
	>=dev-haskell/megaparsec-7.0.4:=[profile?] <dev-haskell/megaparsec-9:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/network-2.7:=[profile?] <dev-haskell/network-3.1.2:=[profile?]
	>=dev-haskell/optparse-applicative-0.13:=[profile?] <dev-haskell/optparse-applicative-0.16:=[profile?]
	>=dev-haskell/parser-combinators-1.0.0:=[profile?]
	>=dev-haskell/regex-tdfa-1.2:=[profile?]
	>=dev-haskell/safe-0.3.9:=[profile?]
	<dev-haskell/split-0.3:=[profile?]
	<dev-haskell/terminal-size-0.4:=[profile?]
	>=dev-haskell/text-1.2.1.0:=[profile?] <dev-haskell/text-1.4:=[profile?]
	>=dev-haskell/uniplate-1.6:=[profile?] <dev-haskell/uniplate-1.7:=[profile?]
	<dev-haskell/unordered-containers-0.3:=[profile?]
	<dev-haskell/utf8-string-1.1:=[profile?]
	<dev-haskell/vector-0.13:=[profile?]
	<dev-haskell/vector-binary-instances-0.3:=[profile?]
	>dev-haskell/zip-archive-0.2.3.5:=[profile?] <dev-haskell/zip-archive-0.5:=[profile?]
	>=dev-lang/ghc-8.2.1:=
	ffi? ( <dev-haskell/libffi-0.2:=[profile?] )
	gmp? ( <dev-haskell/libffi-0.2:=[profile?]
		dev-libs/gmp )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4 <dev-haskell/cabal-3.1
	test? ( dev-haskell/tagged
		>=dev-haskell/tasty-0.8
		>=dev-haskell/tasty-golden-2.0
		>=dev-haskell/tasty-rerun-1.0.0 )
"

src_prepare() {
	default
	# runs dist/build/idris directly and breaks sandboxing
	export LD_LIBRARY_PATH="${S}/dist/build${LD_LIBRARY_PATH+:}${LD_LIBRARY_PATH}"

	# when built with -O2 takes 10GB RAM at least on ghc-7.10.2
	[[ $(ghc-version) == 7.8.* ]] && replace-hcflags -O[2-9] -O1
	[[ $(ghc-version) == 7.10.* ]] && replace-hcflags -O[2-9] -O1
	replace-hcflags -g ''

	tc-export AR CC RANLIB
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-ci \
		--flag=-execonly \
		$(cabal_flag ffi ffi) \
		--flag=-freestanding \
		$(cabal_flag gmp gmp) \
		--flag=release
}

src_install() {
	haskell-cabal_src_install
	doman man/${PN}.1
}
