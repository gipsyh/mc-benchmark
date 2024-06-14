import os
import sys

def aigtoaag(aig_path):
    for root, dirs, files in os.walk(aig_path):
        for file in files:
            if file.endswith('.btor2'):
                aigfile = file[:-6] + '.aig'
                os.system("btor2aiger " + os.path.join(root, file) + " > " + os.path.join(root, aigfile))

if __name__ == "__main__":
    aigtoaag(sys.argv[1])