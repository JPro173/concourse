#!/usr/bin/python3

TEST_FAILED = True


def test():
    if TEST_FAILED:
        raise Exception('Test failed')


if __name__ == '__main__':
    test()
