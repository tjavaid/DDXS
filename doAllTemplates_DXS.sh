nohup python -u runHZZFiducialXS.py --dir="root://cmsio5.rc.ufl.edu//store/user/t2/users/rosedj1/Higgs/HZZ4l/NTuple/Run2/MC2018_M19_Mar12_4l_2018Jets_JER_bestCandLegacy" --obsName="massZ1" --obsBins="|50.0|74.0|88.0|94.0|106.0|" --obsName2="massZ2" --obsBins2="|12|24|" --redoTemplates --templatesOnly  >& templates_massZ1vsmassZ2_12-24.log &

# massZ2 24-32

nohup python -u runHZZFiducialXS.py --dir="root://cmsio5.rc.ufl.edu//store/user/t2/users/rosedj1/Higgs/HZZ4l/NTuple/Run2/MC2018_M19_Mar12_4l_2018Jets_JER_bestCandLegacy" --obsName="massZ1" --obsBins="|50.0|74.0|88.0|94.0|106.0|" --obsName2="massZ2" --obsBins2="|24|32|" --redoTemplates --templatesOnly  >& templates_massZ1vsmassZ2_24-32.log &

# massZ2 32-65

nohup python -u runHZZFiducialXS.py --dir="root://cmsio5.rc.ufl.edu//store/user/t2/users/rosedj1/Higgs/HZZ4l/NTuple/Run2/MC2018_M19_Mar12_4l_2018Jets_JER_bestCandLegacy" --obsName="massZ1" --obsBins="|50.0|74.0|88.0|106.0|" --obsName2="massZ2" --obsBins2="|32|65|" --redoTemplates --templatesOnly  >& templates_massZ1vsmassZ2_32_65.log &





