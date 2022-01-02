import os
import webbrowser
from urllib.parse import quote

def main():
    with open(f"{os.path.dirname(os.path.abspath(__file__))}/shortcuts.dat") as f:
        buf = f.read()

    for l in [l.split('|') for l in buf.split('\n')][1:-1]:
        webbrowser.open(f"alfred://customsearch/{quote(l[0])}/{l[1]}/utf8/nospace/{quote(l[2])}")

if __name__ == '__main__':
    main()
    print('👍 Click "Oh Yes!" to complete the alfred setting!')
