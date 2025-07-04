# run check tasks
[group('check')]
check: check-code check-coverage check-format check-type check-tests

# check code quality
[group('check')]
check-code:
    uv run ruff check {{SOURCES}} {{TESTS}}

# check code coverage
[group('check')]
check-coverage numprocesses="auto" cov_fail_under="80":
    uv run pytest --cov={{SOURCES}} --cov-fail-under={{cov_fail_under}} {{TESTS}}

# check code format
[group('check')]
check-format:
    uv run ruff format --check {{SOURCES}} {{TESTS}}

# check unit tests
[group('check')]
check-test numprocesses="auto":
    uv run pytest --numprocesses={{numprocesses}} {{TESTS}}

# check type
[group('check')]
check-type:
    uv run ty check

# check tests
[group('check')]
check-test:
    uv run pytest --cov-report "xml:coverage.xml" --cov=src tests/