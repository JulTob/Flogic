# Flogic

To use in python:

```bash
gnatmake -c logic.adb
gnatmake -c bridge.adb
gcc -shared -o libfuzzy.so bridge.o logic.o
```
