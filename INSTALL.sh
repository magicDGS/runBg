#!/bin/bash

if [ "$1" = "" ]; then
	PROGRAM_PATH=`pwd`
elif [ -d "$1" ]; then
	PROGRAM_PATH=$1
else
	echo "${PROGRAM_PATH} doesn't exists" >&2
	exit 1
fi

# Generating run
echo '#!/bin/bash' > ${PROGRAM_PATH}/run
echo "PROGRAM_PATH=\"${PROGRAM_PATH}\"" >> ${PROGRAM_PATH}/run
cat ./src/runSource >> ${PROGRAM_PATH}/run
chmod a+x ${PROGRAM_PATH}/run

# Generating j
echo '#!/bin/bash' > ${PROGRAM_PATH}/j
echo "PROGRAM_PATH=\"${PROGRAM_PATH}\"" >> ${PROGRAM_PATH}/j
cat ./src/jSource >> ${PROGRAM_PATH}/j
chmod a+x ${PROGRAM_PATH}/j

# Creating jobs folder
mkdir -p ${PROGRAM_PATH}/jobs
chmod a+w ${PROGRAM_PATH}/jobs

echo "Program installed in ${PROGRAM_PATH}"
exit 0