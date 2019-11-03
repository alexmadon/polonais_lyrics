#!/usr/bin/env python3
import argparse
import os

import gtranslate


def parse_file(opts):
    out=[]
    txtfile=opts.txtfile
    print("converting",txtfile)
    f=open(txtfile,"r")
    lines=f.readlines()
    f.close()
    print(lines)

    previousline=""
    i=0
    for line in lines:
        line=line.strip()
        if line=="" and previousline!="":
            if out[-1]!="</title>":
                out.append("</p>")
            out.append("<p>")
        else:
            if i==0:
                out.append('<song id="">')
                out.append("<title>")
            else:
                out.append("<v>")
            out.append("<pl>"+line+"</pl>")
            frtext=""
            frtext=gtranslate.translate_wrapper(line)
            out.append("<fr>"+frtext+"</fr>")
            if i==0:
                out.append("</title>")
            else:
                out.append("</v>")
        previousline=line
        i=i+1
    out.append("</p>")
    out.append("</song>")
    ss="\n".join(out)
    print(ss)

    filename, file_extension= os.path.splitext(txtfile)
    f=open(filename+".xml","w")
    f.write(ss)
    f.close()
    
def parse_cli():

    parser = argparse.ArgumentParser(description="""Converts a TXT file which is a song lyrics to XML with PL and FR translation
""",formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument('txtfile',help="the txt file to translate")
    opts = parser.parse_args()
    
    return opts

    
if __name__ == "__main__":
    opts=parse_cli()
    parse_file(opts)
