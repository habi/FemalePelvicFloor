# 2214 -> resstore dea
echo "2214 -> resstore dea"
rsync --verbose --recursive --update --omit-dir-times ~/2214/Beckenboden\ Dea/ ~/research-storage-djonov/Aaldijk
# 2214 -> Archiv
echo "2214 -> archiv"
rsync --verbose --recursive --update --omit-dir-times --include="*/" --include="*.?og" --include="*.c?v" --include="*.?oi" --include="*.?at" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --include="*.sb" --include="*.info" --include="*.?nc" --include="*.bkp" --include="*.?if" --exclude="*" ~/2214/Beckenboden\ Dea/ ~/research-storage-uct/Archiv_Tape/Aaldijk\ Beckenboden/
