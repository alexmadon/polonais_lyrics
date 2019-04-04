#!/usr/bin/python3
import epitran
from polyglot.detect import Detector

epi = epitran.Epitran('pol-Latn')

filename="Boys - Moja kochana.rst"

f = open(filename, "r")
lines=f.readlines()
f.close()

output=[]

previous_line='|'
for line in lines:
    line=line.strip()
    if line.startswith('|') and line !='|':
        if previous_line=='|':
            print("PL",line)
            line_cleaned=line.replace('_','').replace('|','').strip()
            output.append(line)
            output.append('| '+epi.transliterate(line_cleaned))
        else:
            print("FR",line)
            output.append(line)

        """
        line_cleaned=line.replace('_','')
        detector = Detector(line_cleaned,quiet=True)
        print(detector.language.name,detector.languages)
        for lang in detector.languages:
            print(lang.name)
        print(line)
        # print(epi.transliterate(line))
        """
    else:
        print(line)
        output.append(line)
    previous_line=line


print('\n'.join(output))


f = open("ipa "+filename, "w")
f.write('\n'.join(output))
f.close()
