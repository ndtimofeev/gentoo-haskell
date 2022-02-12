# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Shell programming, Haskell-style"
HOMEPAGE="https://hackage.haskell.org/package/turtle"
HACKAGE_REV="3"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/${HACKAGE_REV}.cabal -> ${PF}.cabal"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/ansi-wl-pprint-0.6:=[profile?] <dev-haskell/ansi-wl-pprint-0.7:=[profile?]
	>=dev-haskell/async-2.0.0.0:=[profile?] <dev-haskell/async-2.3:=[profile?]
	>=dev-haskell/clock-0.4.1.2:=[profile?] <dev-haskell/clock-0.9:=[profile?]
	>=dev-haskell/exceptions-0.4:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/foldl-1.1:=[profile?] <dev-haskell/foldl-1.5:=[profile?]
	<dev-haskell/hostname-1.1:=[profile?]
	>=dev-haskell/managed-1.0.3:=[profile?] <dev-haskell/managed-1.1:=[profile?]
	>=dev-haskell/optional-args-1.0:=[profile?] <dev-haskell/optional-args-2.0:=[profile?]
	>=dev-haskell/optparse-applicative-0.16:=[profile?] <dev-haskell/optparse-applicative-0.18:=[profile?]
	<dev-haskell/stm-2.6:=[profile?]
	<dev-haskell/streaming-commons-0.3:=[profile?]
	>=dev-haskell/system-fileio-0.2.1:=[profile?] <dev-haskell/system-fileio-0.4:=[profile?]
	>=dev-haskell/system-filepath-0.3.1:=[profile?] <dev-haskell/system-filepath-0.5:=[profile?]
	<dev-haskell/temporary-1.4:=[profile?]
	>=dev-haskell/text-1.0.0:=[profile?] <dev-haskell/text-2.1:=[profile?]
	>=dev-haskell/unix-compat-0.4:=[profile?] <dev-haskell/unix-compat-0.6:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/doctest-0.7 <dev-haskell/doctest-0.19
		>=dev-haskell/system-filepath-0.4 )
"

src_prepare() {
	# pull revised cabal from upstream
	cp "${DISTDIR}/${PF}.cabal" "${S}/${PN}.cabal" || die

	# Apply patches *after* pulling the revised cabal
	default
}
