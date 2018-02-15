#!/bin/bash

export PATH=/usr/bin:/bin:/usr/sbin:/sbin

pkgname="InstallerPATH"
version="1.0"
identifier="com.scriptingosx.${pkgname}"
install_location="/"

projectfolder=$(dirname "$0")

pkgpath="${projectfolder}/${pkgname}-${version}.pkg"


pkgbuild --nopayload \
         --identifier "${identifier}" \
         --version "${version}" \
         --scripts "${projectfolder}/scripts" \
         --install-location "${install_location}" \
         "${pkgpath}"

