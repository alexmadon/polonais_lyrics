#!/usr/bin/env python3
import argparse
import gtranslate


def parse_file(opts):
    out=[]
    txtfile=opts.txtfile
    print("coverting",txtfile)
    f=open(txtfile,"r")
    lines=f.readlines()
    f.close()
    print(lines)


    for line in lines:
        line=line.strip()
        if line=="":
            out.append("</p>")
            out.append("<p>")
        else:
            out.append("<v>")
            out.append("<pl>"+line+"</pl>")
            frtext=gtranslate.translate_wrapper(line)
            out.append("<fr>"+frtext+"</fr>")
            out.append("</v>")
    print("\n".join(out))
    
def parse_cli():

    parser = argparse.ArgumentParser(description="""Converts a TXT file which is a song lyrics to XML with PL and FR translation
""",formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument('txtfile',help="the txt file to translate")
    opts = parser.parse_args()
    
    return opts

    
if __name__ == "__main__":
    opts=parse_cli()
    parse_file(opts)
