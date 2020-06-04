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


def zeta_fn_complete_solution():
    """See comments for sketch of the proof
    """
    # proof will be added to the docs by end of June 2020
    solution = 42
    return solution


if __name__ == "__main__":
    myclass = MyClass(6)
    print(my_fun(myclass.blee))
    sys.exit()

