import jCMIP as jc
import sys
import os
import shutil

# Get information:
inputs = sys.argv

Clist = jc.readList('../../CMIP6list')
Model   = Clist[inputs[1]]
EXP     = inputs[2]
ENS     = inputs[3]
var     = inputs[4]
vtype   = inputs[5]
imin    = float(inputs[6])
imax    = float(inputs[7])
jmin    = float(inputs[8])
jmax    = float(inputs[9])
outfile = inputs[10]
lfile   = inputs[11]
runfile = inputs[12]

# No mask:
gmask   = []

if not os.path.isfile(outfile):
    jc.box_means(Model,EXP,ENS,var,vtype,imin,imax,jmin,jmax,runfile,gmask=gmask,gtype='gn')
    shutil.move(runfile, outfile)

# Delete submit file after successful computation:
os.remove(('../' + lfile))