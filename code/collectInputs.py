#import os, sys
import sys, os, string, re, pwd, commands, ast, optparse, shlex, time
sys.path.append('./datacardInputs')
grootargs = []
def callback_rootargs(option, opt, value, parser):
    grootargs.append(opt)

### Define function for parsing options
def parseOptions():

    global opt, args, runAllSteps

    usage = ('usage: %prog [options]\n'
             + '%prog -h for help')
    parser = optparse.OptionParser(usage)

    # input options
    parser.add_option('-d', '--dir',    dest='SOURCEDIR',  type='string',default='./', help='run from the SOURCEDIR as working area, skip if SOURCEDIR is an empty string')
    parser.add_option('',   '--modelName',dest='MODELNAME',type='string',default='SM', help='Name of the Higgs production or spin-parity model, default is "SM", supported: "SM", "ggH", "VBF", "WH", "ZH", "ttH", "exotic","all"')
    parser.add_option('',   '--obsName',dest='OBSNAME',    type='string',default='',   help='Name of the observalbe, supported: "mass4l", "pT4l", "massZ2", "rapidity4l", "cosThetaStar", "njets_reco_pt30_eta4p7"')
    parser.add_option('',   '--obsName2',dest='OBSNAME2',    type='string',default='',   help='Name of the other observalbe, supported: "massZ2", "njets_reco_pt30_eta2p5","njets_reco_pt30_eta4p7"')
    parser.add_option('',   '--obsBins',dest='OBSBINS',    type='string',default='',   help='Bin boundaries for the diff. measurement separated by "|", e.g. as "|0|50|100|", use the defalut if empty string')
    parser.add_option('',   '--obsBins2',dest='OBSBINS2',    type='string',default='',   help='Bin boundaries for the diff. measurement separated by "|", e.g. as "|0|50|100|", use the defalut if empty string')
    parser.add_option('-f', '--doFit', action="store_true", dest='DOFIT', default=False, help='doFit, default false')
    parser.add_option('-p', '--doPlots', action="store_true", dest='DOPLOTS', default=False, help='doPlots, default false')
    parser.add_option('-c', '--channel', dest="CHAN", type='string', default='', help='only do one channel')
    parser.add_option("-l",action="callback",callback=callback_rootargs)
    parser.add_option("-q",action="callback",callback=callback_rootargs)
    parser.add_option("-b",action="callback",callback=callback_rootargs)

    # store options and arguments as global variables
    global opt, args
    (opt, args) = parser.parse_args()

# parse the arguments and options
#global opt, args, runAllSteps
parseOptions()
sys.argv = grootargs
# for second observable
obs_bins2 = opt.OBSBINS2.split("|")
if (not (obs_bins2[0] == '' and obs_bins2[len(obs_bins2)-1]=='')):
    print 'BINS OPTION MUST START AND END WITH A |'
obs_bins2.pop()
obs_bins2.pop(0)
print "obs_bins2[0]", obs_bins2[0]
print "obs_bins2[1]", obs_bins2[1]
obs_bins2_low=obs_bins2[0]
obs_bins2_high=obs_bins2[1]


#def collect(obsName):
#def collect(obsName, obsName2):
def collect(obsName, obsName2, obs_bins2_low,obs_bins2_high):

  #sys.path.append('/raid/raid7/tjavaid/fiducial_XS/CMSSW_7_4_7/src/FidXS_13TeV_2018_80X_postM19_newBinning_double_DXS/datacardInputs')
  acc = {}; dacc = {}; acc_4l = {}; dacc_4l = {}; dacc_4l = {};
  eff = {}; deff = {}; 
  inc_outfrac = {}; binfrac_outfrac = {};
  outinratio = {}; doutinratio = {};
  inc_wrongfrac = {}; binfrac_wrongfrac = {}; 
  cfactor = {};
  lambdajesup = {}; lambdajesdn = {};

  channels = ['4mu','4e','2e2mu']
  if (obsName=='mass4l'): channels.append('4l')


  for ch in channels:
#    _tmp = __import__('inputs_sig_'+obsName+'_'+ch, globals(), locals(), -1)
    #_tmp = __import__('inputs_sig_'+obsName+'_vs_'+obsName2+'_'+obs_bins2[0]+'-'+obs_bins2[1]+'_'+ch, globals(), locals(), -1)
    print "hello.................",os. getcwd()
    _tmp = __import__('inputs_sig_'+obsName+'_vs_'+obsName2+'_'+obs_bins2_low+'-'+obs_bins2_high+'_'+ch, globals(), locals(), -1)
    print "_tmp is.........", _tmp 
    #_tmp = __import__('datacardInputs/inputs_sig_'+obsName+'_vs_'+obsName2+'_'+obs_bins2[0]+'-'+obs_bins2[1]+'_'+ch, globals(), locals(), -1)

    acc.update(_tmp.acc); dacc.update(_tmp.dacc); 
    acc_4l.update(_tmp.acc_4l); dacc_4l.update(_tmp.dacc_4l);
    eff.update(_tmp.eff); deff.update(_tmp.deff); 
    inc_outfrac.update(_tmp.inc_outfrac); binfrac_outfrac.update(_tmp.binfrac_outfrac);
    outinratio.update(_tmp.outinratio); doutinratio.update(_tmp.doutinratio);
    inc_wrongfrac.update(_tmp.inc_wrongfrac); binfrac_wrongfrac.update(_tmp.binfrac_wrongfrac); 
    cfactor.update(_tmp.cfactor);
    lambdajesup.update(_tmp.lambdajesup); lambdajesdn.update(_tmp.lambdajesdn);

  #with open('datacardInputs/inputs_sig_'+obsName+'.py', 'w') as f:
  with open('datacardInputs/inputs_sig_'+obsName+'_vs_'+obsName2+'_'+obs_bins2_low+'-'+obs_bins2_high+'.py', 'w') as f:
    f.write('acc = '+str(acc)+' \n')
    f.write('dacc = '+str(dacc)+' \n')
    f.write('acc_4l = '+str(acc_4l)+' \n')
    f.write('dacc_4l = '+str(dacc_4l)+' \n')
    f.write('eff = '+str(eff)+' \n')
    f.write('deff = '+str(deff)+' \n')
    f.write('inc_outfrac = '+str(inc_outfrac)+' \n')
    f.write('binfrac_outfrac = '+str(binfrac_outfrac)+' \n')
    f.write('outinratio = '+str(outinratio)+' \n')
    f.write('doutinratio = '+str(doutinratio)+' \n')
    f.write('inc_wrongfrac = '+str(inc_wrongfrac)+' \n')
    f.write('binfrac_wrongfrac = '+str(binfrac_wrongfrac)+' \n')
    f.write('cfactor = '+str(cfactor)+' \n')
    f.write('lambdajesup = '+str(lambdajesup)+' \n')
    f.write('lambdajesdn = '+str(lambdajesdn)+' \n')



#collect('mass4l')
#collect('rapidity4l')

#collect('pT4l')

#collect('njets_pt30_eta4p7')
#collect('njets_pt30_eta2p5')
#collect('pt_leadingjet_pt30_eta4p7')
#collect('pt_leadingjet_pt30_eta2p5')
#collect('massZ2')
#collect('massZ1')

#collect('massZ1','massZ2')
#collect(opt.OBSNAME,opt.OBSNAME2)
collect(opt.OBSNAME,opt.OBSNAME2, obs_bins2_low, obs_bins2_high)

