from hello_package_ewan.str.operations import add_str, int_to_str_add


def test_add_str():
    assert add_str("Hello, ", "world!") == "Hello, world!"


def test_int_to_str_add():
    assert int_to_str_add(12, 34) == "1234"
    assert int_to_str_add(0, 5) == "05"
    assert int_to_str_add(-1, 2) == "-12"
