HOST=mohinga-production.catalpa.build
DATABASE=mohinga_db
PATCHSAVEDIR=./${HOST}/${DATABASE}
TARGETDIR=./${DATABASE}
VERSION=-1

mkdir -p ${PATCHSAVEDIR}
mkdir -p ${TARGETDIR}

./opgib.pyz restore \
	--targetdir ${TARGETDIR}\
	--patchsavedir ${PATCHSAVEDIR} \
	-d ${VERSION} \
	-v \
	${PATCHSAVEDIR} sftp://kattebak.catalpa.io:/opgib/${PATCHSAVEDIR} \
	
