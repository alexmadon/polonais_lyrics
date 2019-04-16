#!/usr/bin/python3
import argparse

import polishipa

# import epitran
# from polyglot.detect import Detector


def parse_cli():
    parser = argparse.ArgumentParser(description="""add phonetics""",formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument('filename',help="the RST file to translate in IPA.")
    opts = parser.parse_args()
    # debug(xx,"opts:",opts)
    return opts

def translate(filename):
    (rerules,rules_with_symbols,g2p_dict,regex)=polishipa.setup()
    # textipa=polishipa.convert(text,rerules,rules_with_symbols,g2p_dict,regex)
    
    # epi = epitran.Epitran('pol-Latn')
    
    # filename="Boys - Moja kochana.rst"
    
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
                output.append('| '+polishipa.convert(line_cleaned,rerules,rules_with_symbols,g2p_dict,regex))
            else:
                print("FR",line)
                output.append(line)
        else:
            print(line)
            output.append(line)
        previous_line=line


    print('\n'.join(output))


    f = open("ipa/"+filename, "w")
    f.write('\n'.join(output))
    f.close()


if __name__ == "__main__":
    opts=parse_cli()
    translate(opts.filename)
