# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999
#hackport: flags: -developer

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A low-level MySQL client library"
HOMEPAGE="https://github.com/paul-rouse/mysql"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RESTRICT=test # needs local mysql

RDEPEND=">=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/hspec )
"

# 'mysql_config' is used in Setup.hs to detect mysql libs and headers.
RDEPEND+="
	dev-db/mysql-connector-c:=
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-developer
}
