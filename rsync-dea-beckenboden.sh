# 2214 -> Archiv
echo "2214 -> archiv"
rsync --verbose --recursive --times --update --omit-dir-times --prune-empty-dirs --exclude="*rec*.png" --exclude="*.dcm" --exclude="*.zarr" --exclude="*_rectmp.log" --exclude="SubScan?" --exclude="Thumbs.db" ~/2214/Beckenboden\ Dea/ ~/research_storage_uct/Archiv_Tape/Aaldijk\ Beckenboden/
# 2214 -> resstore dea
echo "2214 -> resstore dea"
rsync --verbose --recursive --update --times --omit-dir-times --exclude="*_rectmp.log" --exclude="*.?if" ~/2214/Beckenboden\ Dea/ ~/research_storage_djonov/Aaldijk/PelvicFloor/
echo "Generate copy on FastSSD"
echo "2214 --> FastSSD"
rsync --verbose --recursive --update --times --omit-dir-times --exclude="*_rectmp.log" --exclude="*.?if" ~/2214/Beckenboden\ Dea/ /media/habi/Fast_SSD/Aaldijk/PelvicFloor/
echo "resstore dea --> FastSSD"
rsync --verbose --recursive --update --times --omit-dir-times --exclude="*_rectmp.log" --exclude="*.raw" --exclude="*.?if" --exclude="*.ims" ~/research_storage_djonov/Aaldijk/PelvicFloor/ /media/habi/Fast_SSD/Aaldijk/PelvicFloor/
echo "Update  resstore dea from FastSSD"
rsync --verbose --recursive --update --times --omit-dir-times --exclude="*.zarr" /media/habi/Fast_SSD/Aaldijk/PelvicFloor/ ~/research_storage_djonov/Aaldijk/PelvicFloor/
echo "Logs from archive -> Repository subfolder"
rsync --verbose --recursive --update --times --omit-dir-times --include="*/" --include="*.?og" --include="*.c?v" --include="*.?oi" --include="*.txt" --include="*.md" --include="*.?nc" --exclude="*_rectmp.log" --exclude="*" ~/research_storage_uct/Archiv_Tape/Aaldijk\ Beckenboden/ ~/P/Documents/Dea-Beckenboden/logfiles/
