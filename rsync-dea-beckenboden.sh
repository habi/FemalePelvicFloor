# 2214 -> resstore dea
echo "2214 -> resstore dea"
rsync --verbose --recursive --update --times --omit-dir-times --exclude="*.?if" ~/2214/Beckenboden\ Dea/ ~/research-storage-djonov/Aaldijk/
# 2214 -> Archiv
echo "2214 -> archiv"
rsync --verbose --recursive --update --times --omit-dir-times --include="*/" --include="*.?og" --include="*.c?v" --include="*.?oi" --include="*.?at" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --include="*.sb" --include="*.info" --include="*.?nc" --include="*.bkp" --include="*.?if" --exclude="*" ~/2214/Beckenboden\ Dea/ ~/research-storage-uct/Archiv_Tape/Aaldijk\ Beckenboden/
echo "2214 -> FastSSD (excluding some stuff)"
rsync --verbose --recursive --update --times --omit-dir-times --exclude="Foetus01*" --exclude="rec_old" --exclude="*.?if" ~/2214/Beckenboden\ Dea/ /media/habi/Fast_SSD/Aaldijk/
echo "resstore dea -> FastSSD (excluding some stuff)"
rsync --verbose --recursive --update --times --omit-dir-times  --exclude="Foetus01*" --exclude="rec_old" --exclude="*.?if" ~/research-storage-djonov/Aaldijk/ /media/habi/Fast_SSD/Aaldijk/
echo "FastSSD --> resstore dea"
rsync --verbose --recursive --update --times --omit-dir-times /media/habi/Fast_SSD/Aaldijk/ ~/research-storage-djonov/Aaldijk/
