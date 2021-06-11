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
mons    = inputs[6].split(',')
outfile = inputs[7]
lfile   = inputs[8]

jc.seasonal_means(Model,EXP,ENS,var,vtype,mons,outfile,gtype='gn')

# Delete submit file after successful computation:
os.remove(('../' + lfile))