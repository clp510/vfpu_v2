Steps to run powerpc program with altivec in QEMU
1. set the environment : source environment-setup-ppc4xx-linux
2. compile c program:
    powerpc-linux-gcc -static -maltivec -o *.elf *.c
3. run the elf file in QEMU
    qemu-ppc -cpu 7400 *.elf
