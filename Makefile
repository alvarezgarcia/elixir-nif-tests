ERL_INCLUDE_PATH=/usr/lib/erlang/usr/include/

all: priv/fast_compare.so

priv/fast_compare.so: c_src/fast_compare.c
	gcc -fPIC -shared -I$(ERL_INCLUDE_PATH) -o priv/fast_compare.so c_src/fast_compare.c

clean:
	rm -rf priv/fast_compare.so
