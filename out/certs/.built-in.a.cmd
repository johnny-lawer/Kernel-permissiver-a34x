cmd_certs/built-in.a :=  rm -f certs/built-in.a; llvm-ar rcSTPD certs/built-in.a certs/system_keyring.o certs/system_certificates.o
