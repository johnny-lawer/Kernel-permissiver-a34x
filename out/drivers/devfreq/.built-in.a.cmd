cmd_drivers/devfreq/built-in.a :=  rm -f drivers/devfreq/built-in.a; llvm-ar rcSTPD drivers/devfreq/built-in.a drivers/devfreq/devfreq.o drivers/devfreq/governor_simpleondemand.o drivers/devfreq/helio-dvfsrc-v3/built-in.a