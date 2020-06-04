import sys

# Some comment


class MyClass:
    """
    My class
    """
    def __init__(self, blee):
        """My init
        """
        self.blee = blee


def my_fun(blah):
    """Here's my function!
    """
    return blah


if __name__ == "__main__":
    myclass = MyClass(6)
    print(my_fun(myclass.blee))
    sys.exit()

