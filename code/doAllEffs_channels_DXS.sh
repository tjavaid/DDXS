#          massZ2
#nohup python -u efficiencyFactors.py -l -q -b --obsName="massZ2" --obsBins="|12.0|20.0|24.0|28.0|32.0|40.0|55.0|65.0|" -c "4mu" >& log_massZ2_4mu.log &
#nohup python -u efficiencyFactors.py -l -q -b --obsName="massZ2" --obsBins="|12.0|20.0|24.0|28.0|32.0|40.0|55.0|65.0|" -c "4e" >& log_massZ2_4e.log &
#nohup python -u efficiencyFactors.py -l -q -b --obsName="massZ2" --obsBins="|12.0|20.0|24.0|28.0|32.0|40.0|55.0|65.0|" -c "2e2mu" >& log_massZ2_2e2mu.log &

#          massZ1
#nohup python -u efficiencyFactors.py -l -q -b --obsName="massZ1" --obsBins="|50.0|65.0|74.0|82.0|88.0|94.0|106.0|" -c "4mu" >& log_massZ1_4mu.log &
#nohup python -u efficiencyFactors.py -l -q -b --obsName="massZ1" --obsBins="|50.0|65.0|74.0|82.0|88.0|94.0|106.0|" -c "4e" >& log_massZ1_4e.log &
#nohup python -u efficiencyFactors.py -l -q -b --obsName="massZ1" --obsBins="|50.0|65.0|74.0|82.0|88.0|94.0|106.0|" -c "2e2mu" >& log_massZ1_2e2mu.log &

##  massZ1 vs massZ2

#massZ2 |12.0|24.0|

nohup python -u efficiencyFactors_test.py -l -q -b --obsName="massZ1" --obsBins="|50.0|74.0|88.0|94.0|106.0|" --obsName2="massZ2" --obsBins2="|12|24|" -c "4mu" >& log_eff_massZ1vsmassZ2_12-24_4mu.log &


nohup python -u efficiencyFactors_test.py -l -q -b --obsName="massZ1" --obsBins="|50.0|74.0|88.0|94.0|106.0|" --obsName2="massZ2" --obsBins2="|12|24|" -c "4e" >& log_eff_massZ1vsmassZ2_12-24_4e.log &

nohup python -u efficiencyFactors_test.py -l -q -b --obsName="massZ1" --obsBins="|50.0|74.0|88.0|94.0|106.0|" --obsName2="massZ2" --obsBins2="|12|24|" -c "2e2mu" >& log_eff_massZ1vsmassZ2_12-24_2e2mu.log &


#massZ2 |24.0|32.0|

nohup python -u efficiencyFactors_test.py -l -q -b --obsName="massZ1" --obsBins="|50.0|74.0|88.0|94.0|106.0|" --obsName2="massZ2" --obsBins2="|24|32|" -c "4mu" >& log_eff_massZ1vsmassZ2_24-32_4mu.log &


nohup python -u efficiencyFactors_test.py -l -q -b --obsName="massZ1" --obsBins="|50.0|74.0|88.0|94.0|106.0|" --obsName2="massZ2" --obsBins2="|24|32|" -c "4e" >& log_eff_massZ1vsmassZ2_24-32_4e.log &

nohup python -u efficiencyFactors_test.py -l -q -b --obsName="massZ1" --obsBins="|50.0|74.0|88.0|94.0|106.0|" --obsName2="massZ2" --obsBins2="|24|32|" -c "2e2mu" >& log_eff_massZ1vsmassZ2_24-32_2e2mu.log &

#massZ2 |32.0|65.0|

nohup python -u efficiencyFactors_test.py -l -q -b --obsName="massZ1" --obsBins="|50.0|74.0|88.0|106.0|" --obsName2="massZ2" --obsBins2="|32|65|" -c "4mu" >& log_eff_massZ1vsmassZ2_32-65_4mu.log &


nohup python -u efficiencyFactors_test.py -l -q -b --obsName="massZ1" --obsBins="|50.0|74.0|88.0|106.0|" --obsName2="massZ2" --obsBins2="|32|65|" -c "4e" >& log_eff_massZ1vsmassZ2_32-65_4e.log &

nohup python -u efficiencyFactors_test.py -l -q -b --obsName="massZ1" --obsBins="|50.0|74.0|88.0|106.0|" --obsName2="massZ2" --obsBins2="|32|65|" -c "2e2mu" >& log_eff_massZ1vsmassZ2_32-65_2e2mu.log &









#nohup python -u efficiencyFactors.py -l -q -b --dir="/raid/raid7/tjavaid/bkg_samples/" --obsName="njets_pt30_eta2p5" --obsBins="|0.0|1.0|2.0|3.0|4.0|10.0|" -c "4mu" >& effs_njets_pt30_eta2p5_4mu.log &
#nohup python -u efficiencyFactors.py -l -q -b --dir="/raid/raid7/tjavaid/bkg_samples/" --obsName="njets_pt30_eta2p5" --obsBins="|0.0|1.0|2.0|3.0|4.0|10.0|" -c "4e" >& effs_njets_pt30_eta2p5_4e.log &
#nohup python -u efficiencyFactors.py -l -q -b --dir="/raid/raid7/tjavaid/bkg_samples/" --obsName="njets_pt30_eta2p5" --obsBins="|0.0|1.0|2.0|3.0|4.0|10.0|" -c "2e2mu" >& effs_njets_pt30_eta2p5_2e2mu.log &




#nohup python -u efficiencyFactors.py -l -q -b --dir="/raid/raid7/tjavaid/bkg_samples/" --obsName="pt_leadingjet_pt30_eta2p5" --obsBins="|-2.0|30.0|55.0|95.0|200.0|13000.0|" -c "4mu" >& effs_pt_leadingjet_pt30_eta2p5_4mu.log &
#nohup python -u efficiencyFactors.py -l -q -b --dir="/raid/raid7/tjavaid/bkg_samples/" --obsName="pt_leadingjet_pt30_eta2p5" --obsBins="|-2.0|30.0|55.0|95.0|200.0|13000.0|" -c "4e" >& effs_pt_leadingjet_pt30_eta2p5_4e.log &
#nohup python -u efficiencyFactors.py -l -q -b --dir="/raid/raid7/tjavaid/bkg_samples/" --obsName="pt_leadingjet_pt30_eta2p5" --obsBins="|-2.0|30.0|55.0|95.0|200.0|13000.0|" -c "2e2mu" >& effs_pt_leadingjet_pt30_eta2p5_2e2mu.log &
##python -u plot2dsigeffs.py -l -q -b --obsName="pt_leadingjet_pt30_eta2p5" --obsBins="|-2.0|30.0|55.0|95.0|200.0|13000.0|" >& sigeffs_ptjet.log &
#python -u getUnc_Unc.py -l -q -b --obsName="pt_leadingjet_pt30_eta2p5" --obsBins="|-2.0|30.0|55.0|95.0|200.0|13000.0|" >& unc_pt_leadingjet_pt30_eta2p5.log &
##python -u plot2dsigeffs.py -l -q -b --obsName="pT4l" --obsBins="|0|15|30|45|80|120|200|13000|" >& sigeffs_pT4l.log &
##python -u plot2dsigeffs.py -l -q -b --obsName="njets_pt30_eta2p5" --obsBins="|0.0|1.0|2.0|3.0|4.0|10.0|" >& sigeffs_njets.log &

#python -u plot2dsigeffs.py -l -q -b --obsName="massZ2" --obsBins="|12.0|20.0|24.0|28.0|32.0|40.0|55.0|65.0|" >& sigeffs_massZ2.log &

## massZ2
#nohup python -u efficiencyFactors.py -l -q -b --dir="raid/raid7/dsperka/Run2/HZZ4l/SubmitArea_13TeV/liteUFHZZ4LAnalyzer/" --obsName="massZ2" --obsBins="|12.0|20.0|24.0|28.0|32.0|40.0|55.0|65.0|" -c "4mu" >& log_massZ2_4mu.log &
#nohup python -u efficiencyFactors.py -l -q -b --dir="raid/raid7/dsperka/Run2/HZZ4l/SubmitArea_13TeV/liteUFHZZ4LAnalyzer/" --obsName="massZ2" --obsBins="|12.0|20.0|24.0|28.0|32.0|40.0|55.0|65.0|" -c "4e" >& log_massZ2_4e.log &
#nohup python -u efficiencyFactors.py -l -q -b --dir="raid/raid7/dsperka/Run2/HZZ4l/SubmitArea_13TeV/liteUFHZZ4LAnalyzer/" --obsName="massZ2" --obsBins="|12.0|20.0|24.0|28.0|32.0|40.0|55.0|65.0|" -c "2e2mu" >& log_massZ2_2e2mu.log &

#python -u plot2dsigeffs.py -l -q -b --obsName="massZ2" --obsBins="|12.0|20.0|24.0|28.0|32.0|40.0|55.0|65.0|" >& sigeffs_massZ2.log &
