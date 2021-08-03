import jCMIP as jc
import sys
import os

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

# No mask:
gmask   = []

jc.box_means(Model,EXP,ENS,var,vtype,imin,imax,jmin,jmax,outfile,gmask=gmask,gtype='gn')

# Delete submit file after successful computation:
os.remove(('../' + lfile))