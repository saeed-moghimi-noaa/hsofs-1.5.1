#!/bin/bash

## Load Python 2.7.13
#module use /usrx/local/dev/modulefiles
#module load python/2.7.13

export pyPath="/usrx/local/dev/python/2.7.13/bin"
export platform=""

export myModules=${platform}"/gpfs/hps3/nos/noscrub/nwprod/csdlpy-1.5.1"
export pythonCode=${platform}"/gpfs/hps3/nos/noscrub/nwprod/hsofs-1.5.1/hsofs/post.py"
export logFile=${platform}"/gpfs/hps3/nos/noscrub/polar/hsofs/hsofs_post.log"

export hsofsDir=${platform}"/gpfs/hps3/nos/noscrub/Yuji.Funakoshi/hsofs_pac.v1.0.1/com/hsofs/test/"
export stormID="ep142018"
export stormCycle="2018082412"
export outputDir=${platform}"/gpfs/hps3/nos/noscrub/polar/hsofs/"
export tmpDir=${platform}"/gpfs/hps3/nos/noscrub/tmp/hsofs/"
export pltCfgFile=${platform}"/gpfs/hps3/nos/noscrub/nwprod/hsofs-1.5.1/scripts/config.plot.hsofs.ep14.ini"

export ftpLogin="svinogradov@emcrzdm"
export ftpPath="/home/www/polar/estofs/hsofs_pac/"${stormID}"."${stormCycle}

PYTHONPATH=${myModules} ${pyPath}/python -W ignore ${pythonCode} -i ${hsofsDir} -s ${stormID} -z ${stormCycle} -o ${outputDir} -t ${tmpDir} -p ${pltCfgFile} -u ${ftpLogin} -f ${ftpPath} #> ${logFile}

