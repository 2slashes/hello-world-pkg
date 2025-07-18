from helloworld.str.operations import add_str


def test_add_str():
    assert add_str("Hello, ", "world!") == "Hello, world!"
