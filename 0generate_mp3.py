#!/usr/bin/python3
import time
import re
import argparse
from google_speech import Speech # https://github.com/desbma/GoogleSpeech


def get_google(filename):
    
    f = open(filename, "r")
    lines=f.readlines()
    f.close()
    
    output=[]
    counter=1
    plregex=re.compile("<pl>(.+)</pl>")
    for line in lines:
        line=line.strip()
        match=plregex.search(line)
        # print(match)
        if match:
            text=match.group(1)
            print("polish",text)
            lang = "pl"
            filename="gspeech/"+str(counter)+".mp3"
            print("filename",filename)
            speech = Speech(text, lang)
            speech.save(filename)
            time.sleep(0.5)
            counter=counter+1


if __name__ == "__main__":
    # opts=parse_cli()
    # filename=opts.filename
    filename="lyr.xml"
    get_google(filename)
