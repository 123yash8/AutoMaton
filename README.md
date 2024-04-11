
# AutoMaton
Automation for redundant VAPT tasks Like Nmap, Nikto, and Nuclei Scanning.\
The tool also gives you subdomains and kxss is used on the parameters to check for unfiltered characters.\
This tool also helps you to find parameters for various types of injection using waybackurls, the tool also enumerates any js files in your target the tool takes only the main domain and waiting time as input and does all the scans on the main domain as well as all the subdomains.\
The output of the tool is stored in the **op** directory you can access the scan output stored in text files, and analyze it, the output is stored conveniently in different folders all having the name of the tool, the text file will also have the name of the tool used as well as domain name to make it easy for users to organize.

## Installation And Requirements
The tools and Libraries required for the proper functioning of this tool are as follows.
1. kxss
2. waybackurls
3. Nikto
4. Nmap
5.Sublist3r
6. Nuclei
7. WPscan
8. Figlet
9. Boxes
10. lolcat

### To install the tool simply run the following commands in your terminal
```
git clone https://github.com/123yash8/AutoMaton.git
cd AutoMaton
chmod +x setup.sh
bash setup.sh
```

### Usage
` bash runner.sh <url>`
\
## Note
Please make sure that you install kxss and waybackurls binary files in the /usr/bin/share directory else edit their paths in the files namely.\
1. wayback-js.sh
2. wayback-kxss.sh
3. wayback_params.sh\

To their respective locations...\

> So this is all for now I'll keep updating this tool and am looking forward for all of your support till then...........\

***Sayo<sub>nara.....</sub>***





