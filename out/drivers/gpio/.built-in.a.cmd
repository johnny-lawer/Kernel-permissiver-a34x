cmd_drivers/gpio/built-in.a :=  rm -f drivers/gpio/built-in.a; llvm-ar rcSTPD drivers/gpio/built-in.a drivers/gpio/devres.o drivers/gpio/gpiolib.o drivers/gpio/gpiolib-legacy.o drivers/gpio/gpiolib-devprop.o drivers/gpio/gpiolib-of.o
