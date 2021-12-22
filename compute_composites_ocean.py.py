import jCMIP as jc
import numpy as np
import glob
import os
import sys
from netCDF4 import Dataset
import matplotlib.pyplot as plt

# Get information:
inputs = sys.argv

Clist = jc.readList('../CMIP6list')
Model = Clist[inputs[0]]
# Details for computation:
EXP          = inputs[1]
BenType      = inputs[2]
var_ts       = inputs[3]
nvar_ts      = inputs[4]
var_field    = inputs[5]
season_ts    = inputs[6]
season_field = inputs[7]
lag          = int(inputs[8].split(','))
outfile      = inputs[9]
lfile        = inputs[10]

print(lag)

# Directory/file details:
dataBen = '/gws/nopw/j04/acsis/bjharvey/storylines/data/JetDiags/'
BenType = '0to60W_fromseasmean'
datadir = '/gws/nopw/j04/acsis/jmecking/CMIP6/'

# Find all regridded files of variable:
Files = glob.glob(datadir + '/*/' + EXP + '/' + var + '*-EN4_' + season_field + '.nc' )
nf    = len(Files)
print(nf)

# Get lon/lat info:
ncid  = Dataset(Files[0],'r')
lon   = ncid.variables['lon'][:]
lat   = ncid.variables['lat'][:]
ncid.close()

ni = np.size(lon)
nj = np.size(lat)
nl = np.size(lag)

# Start counter for seasons (assuming always starts with MAM)
if season_ts == 'MAM':
    sts = 0
elif season_ts == 'JJA':
    sts = 1
elif season_ts == 'SON':
    sts = 2
elif season_ts == 'DJF':
    sts = 3
    
# Create output file if it doesn't exist:
if not os.path.isfile(outfile):
    ncid = Dataset(outfile,'w')
    # Dimensions:
    ncid.createDimension('lon',  ni)
    ncid.createDimension('lat',  nj)
    ncid.createDimension('lag',  nl)
    ncid.createDimension('model',None)

    # Variables:
    ncid.createVariable('lon',     'f8', ('lon',))
    ncid.createVariable('lat',     'f8', ('lat',))
    ncid.createVariable('lags',    'f8', ('lag',))
    ncid.createVariable('models',  'str',('model',))
    ncid.createVariable('mean',    'f8', ('model','lat','lon',))
    ncid.createVariable('min_std0','f8', ('model','lag','lat','lon',))
    ncid.createVariable('min_std1','f8', ('model','lag','lat','lon',))
    ncid.createVariable('min_std2','f8', ('model','lag','lat','lon',))
    ncid.createVariable('max_std0','f8', ('model','lag','lat','lon',))
    ncid.createVariable('max_std1','f8', ('model','lag','lat','lon',))
    ncid.createVariable('max_std2','f8', ('model','lag','lat','lon',))

    # Data:
    ncid.variables['lon'][:] = lon
    ncid.variables['lat'][:] = lat
    ncid.variables['lags'][:] = lag

    ncid.close()

    models = []
else:
    # Find out how much has been computed:
    ncid = Dataset(outfile,'r')
    models = ncid.variables['models'][:]
    ncid.close()
    
nm = len(models)

