!#/bin/bash
cd q5dir
cat to_replace.txt | xargs -n1 | xargs -I {} mv ./replace/{}.txt ./replace/{}{}.txt
