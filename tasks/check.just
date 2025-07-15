# run check tasks
[group('check')]
check: check-code check-coverage check-format check-type 

# check code quality
[group('check')]
check-code:
    uv run ruff check {{SOURCES}} {{TESTS}}

# check code coverage
[group('check')]
check-coverage numprocesses="auto" cov_fail_under="80":
    uv run pytest --cov-report "xml:coverage.xml" --cov=src tests/

# check code format
[group('check')]
check-format:
    uv run ruff format --check {{SOURCES}} {{TESTS}}

# check type
[group('check')]
check-type:
    uv run ty check
