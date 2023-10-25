import os
import sys

def aigtoaag(aig_path):
    for root, dirs, files in os.walk(aig_path):
        for file in files:
            if file.endswith('.aig'):
                aagfile = file[:-4] + '.aag'
                os.system("aigtoaig " + os.path.join(root, file) + " " + os.path.join(root, aagfile))

if __name__ == "__main__":
    aigtoaag(sys.argv[1])