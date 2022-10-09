# Amsi-Nim
Bypass AmsiScanBuffer con Nim/ Bypass AmsiScanBuffer with Nim

1. [Spanish](#Spanish "Goto Spanish")
2. [English](#English "Goto English")

## Detecciones/ Detections AV
64 bits:
https://antiscan.me/scan/new/result?id=uJI9wcZXpLuz

32 bits:
https://antiscan.me/scan/new/result?id=YOGdaCw8rJLt

## Spanish

# Uso #

Descargar los binarios previamentes compilados en releases para 32 y 64 bits, este ejecutable necesita que entrege como primer argumento el PID de su proceso en el cual se hara el Bypass de Amsi, para usarlo puede usarlo asi desde Powershell: .\amsi-64.exe $PID, para 32 bits seria: .\amsi-32.exe $PID, tambien esto lo puede hacer dentro de codigo en C#, para conseguir el Pid en C# podria usar: int ProcessID = Process.GetCurrentProcess().Id; luego llamar al ejecutable con la variable ProcessID, como argumento y a disfrutar ;)

# Compilar desde el codigo fuente #

* `Instalar Nim 64 o 32 bits, segun su caso`
* `Instalar Mingw`
* `Compilar con nim c amsi.nim`
* `Para compilar el codigo en 32 bits si tiene Mimgw32 y Mimgw64, tiene que especificar a nim la ruta de Mimgw, ejemplo: nim c --gcc.path=C:\Users\User\Ruta\Hacia\mingw32\bin --cpu:i386 amsi.nim`

## English 

# Use #

Download the binaries previously compiled in releases for 32 and 64 bits, this executable needs that you deliver as first argument the PID of your process in which the Bypass of Amsi will be done, to use it you can use it this way from Powershell: .\amsi-64. exe $PID, for 32 bits it would be: .\amsi-32.exe $PID, also this can be done in C# code, to get the PID in C# you could use: int ProcessID = Process.GetCurrentProcess().Id; then call the executable with the variable ProcessID, as argument and enjoy ;)

# Compile from source code

* `Install Nim 64 or 32 bit, as appropriate`
* `Install Mingw`
* `To compile with nim c amsi.nim`
* `To compile the code in 32 bits if you have Mimgw32 and Mimgw64, you have to specify to nim the path of Mimgw, example: nim c --gcc.path=C:\Users\User\Path\To\mingw32\bin --cpu:i386 amsi.nim`
