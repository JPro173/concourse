#!/usr/bin/python3

TEST_FAILED = 0


def test():
    if TEST_FAILED:
        raise Exception('Test failed')


if __name__ == '__main__':
    test()
