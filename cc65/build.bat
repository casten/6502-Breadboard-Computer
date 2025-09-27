echo "Building hello.c"
..\..\cc65\bin\cc65.exe -t none -O --cpu 65sc02 hello.c

echo "Assembling..."
..\..\cc65\bin\ca65.exe --cpu 65sc02 hello.s
..\..\cc65\bin\ca65.exe --cpu 65sc02 interrupt.s
..\..\cc65\bin\ca65.exe --cpu 65sc02 vectors.s
..\..\cc65\bin\ca65.exe --cpu 65sc02 wait.s
..\..\cc65\bin\ca65.exe --cpu 65sc02 lcd.s

echo "Linking..."
..\..\cc65\bin\ld65.exe -C breadboard.cfg -m hello.map interrupt.o vectors.o wait.o lcd.o hello.o none.lib

echo "Done."