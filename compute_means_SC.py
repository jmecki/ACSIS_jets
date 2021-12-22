import jCMIP as jc
import sys
import os

# Get information:
inputs = sys.argv

cmip    = inputs[1]
mm      = inputs[2]
EXP     = inputs[3]
ENS     = inputs[4]
var     = inputs[5]
vtype   = inputs[6]
styr    = int(inputs[7])
fnyr    = int(inputs[8])
outfile = inputs[9]
gtype   = inputs[10]
lfile   = inputs[11]

Clist   = jc.readList(('../../CMIP' + cmip + 'list'))
Model   = Clist[mm]
jc.meanSC(Model,EXP,ENS,var,vtype,styr,fnyr,outfile,gtype=gtype)

# Delete submit file after successful computation:
os.remove(lfile)