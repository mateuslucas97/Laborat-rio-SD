view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue HiZ -period 10ps -dutycycle 50 -starttime 0ps -endtime 1000ps sim:/contador_3bits/clock 
wave create -driver freeze -pattern clock -initialvalue 1 -period 1000ps -dutycycle 95 -starttime 0ps -endtime 1000ps sim:/contador_3bits/reset 
wave create -driver freeze -pattern clock -initialvalue 1 -period 1000ps -dutycycle 5 -starttime 0ps -endtime 1000ps sim:/contador_3bits/reset 
WaveCollapseAll -1
wave clipboard restore
