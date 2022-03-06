app_output.elf : app_main.c app_2.c
	arm-none-eabi-gcc -mcpu=cortex-m4 -march=armv7e-m -mthumb -save-temps -nostdlib -O0 -Wl,-Map,"app.map" -Wl,-T"tm4c123gh6pm.lds" app_main.c app_2.c -o app_output.elf
	
	all : app_output.elf