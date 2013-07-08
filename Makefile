CC?=		clang
CXX?=		clang++
PREFIX?=	/usr/local

all: tests

tests:
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o auth_test auth_test.c -L$(PREFIX)/lib -lmongocclient -lbson
#	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o bcon_test bcon_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o benchmark_test benchmark_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o bson_alloc_test bson_alloc_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o bson_subobject_test bson_subobject_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o bson_test bson_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o commands_test commands_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o connect_test connect_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o count_delete_test count_delete_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CXX) -Wall -Werror -I$(PREFIX)/include -o cpptest cpptest.cpp -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o cursors_test cursors_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o endian_swap_test endian_swap_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o env_posix_test env_posix_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o errors_test errors_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o examples_test examples_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o functions_test functions_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o gridfs_test gridfs_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o helpers_test helpers_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o oid_test oid_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o resize_test resize_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o simple_test simple_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o sizes_test sizes_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o unix_socket_test unix_socket_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o update_test update_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o validate_test validate_test.c -L$(PREFIX)/lib -lmongocclient -lbson
	$(CC) -std=c99 -Wall -Werror -I$(PREFIX)/include -o write_concern_test write_concern_test.c -L$(PREFIX)/lib -lmongocclient -lbson

clean:
	rm -f auth_test
	rm -f bcon_test
	rm -f benchmark_test
	rm -f bson_alloc_test
	rm -f bson_subobject_test
	rm -f bson_test
	rm -f commands_test
	rm -f connect_test
	rm -f count_delete_test
	rm -f cpptest
	rm -f cursors_test
	rm -f endian_swap_test
	rm -f env_posix_test
	rm -f errors_test
	rm -f examples_test
	rm -f functions_test
	rm -f gridfs_test
	rm -f helpers_test
	rm -f oid_test
	rm -f resize_test
	rm -f simple_test
	rm -f sizes_test
	rm -f unix_socket_test
	rm -f update_test
	rm -f validate_test
	rm -f write_concern_test

