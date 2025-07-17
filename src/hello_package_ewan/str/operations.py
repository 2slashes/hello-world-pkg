from ..base.base import _add


def add_str(a, b):
    isinstance(a, str)
    isinstance(b, str)
    return _add(a, b)


def int_to_str_add(a, b):
    isinstance(a, int)
    isinstance(b, int)
    return _add(str(a), str(b))
