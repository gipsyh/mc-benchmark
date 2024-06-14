import os
import sys

def aigtoaag(aig_path, out_path):
    for root, dirs, files in os.walk(aig_path):
        for file in files:
            if file.endswith('.aig'):
                os.system("aigmove " + os.path.join(root, file) + " " + out_path + "/" + file)

if __name__ == "__main__":
    aigtoaag(sys.argv[1], sys.argv[2])