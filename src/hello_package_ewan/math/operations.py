from ..base.base import _add


def add_int(a, b):
    isinstance(a, int)
    isinstance(b, int)
    return _add(a, b)
