#!/usr/bin/python3
import argparse
import re


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

    f = open(filename, "r")
    lines=f.readlines()
    f.close()
    
    output=[]
    
    plregex=re.compile("<pl>(.+)</pl>")
    for line in lines:
        line=line.strip()
        match=plregex.search(line)
        # print(match)
        if match:
            polish=match.group(1)
            output.append(line)
            output.append("<ip>"+polishipa.convert(polish,rerules,rules_with_symbols,g2p_dict,regex)+"</ip>")
        else:
            print(line)
            output.append(line)
        previous_line=line


    print('\n'.join(output))


    f = open("ipa_"+filename, "w")
    f.write('\n'.join(output))
    f.close()


if __name__ == "__main__":
    # opts=parse_cli()
    # filename=opts.filename
    filename="lyr.xml"
    translate(filename)
