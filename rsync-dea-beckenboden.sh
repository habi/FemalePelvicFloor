# 2214 -> resstore dea
echo "2214 -> resstore dea"
rsync --verbose --recursive --update --times --omit-dir-times --exclude="*_rectmp.log" --exclude="*.?if" ~/2214/Beckenboden\ Dea/ ~/research-storage-djonov/Aaldijk/PelvicFloor/
# 2214 -> Archiv
echo "2214 -> archiv"
rsync --verbose --recursive --update --times --omit-dir-times --include="*/" --include="*.?og" --include="*.c?v" --include="*.?oi" --include="*.?at" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --include="*.sb" --include="*.info" --include="*.?nc" --include="*.bkp" --include="*.?if" --exclude="*_rectmp.log" --exclude="*" ~/2214/Beckenboden\ Dea/ ~/research-storage-uct/Archiv_Tape/Aaldijk\ Beckenboden/
echo "Generate copy on FastSSD"
echo "2214 --> FastSSD"
rsync --verbose --recursive --update --times --omit-dir-times --exclude="*_rectmp.log" --exclude="*.?if" ~/2214/Beckenboden\ Dea/ /media/habi/Fast_SSD/Aaldijk/
echo "resstore dea --> FastSSD"
rsync --verbose --recursive --update --times --omit-dir-times --exclude="*_rectmp.log" --exclude="*.raw" --exclude="*.?if" ~/research-storage-djonov/Aaldijk/PelvicFloor /media/habi/Fast_SSD/Aaldijk/
echo "Update  resstore dea from FastSSD"
rsync --verbose --recursive --update --times --omit-dir-times /media/habi/Fast_SSD/Aaldijk/ ~/research-storage-djonov/Aaldijk/PelvicFloor
echo "Log files and stuff on 2214 -> Repository subfolder"
rsync --verbose --recursive --update --times --omit-dir-times --include="*/" --include="*.?og" --include="*.c?v" --include="*.?oi" --include="*.txt" --include="*.md" --include="*.?nc" --exclude="*_rectmp.log" --exclude="*" ~/2214/Beckenboden\ Dea/ /home/habi/P/Documents/Dea-Beckenboden/logfiles/
