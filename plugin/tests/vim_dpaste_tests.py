import unittest
import vim_dpaste as sut


@unittest.skip("Don't forget to test!")
class VimDpasteTests(unittest.TestCase):

    def test_example_fail(self):
        result = sut.vim_dpaste_example()
        self.assertEqual("Happy Hacking", result)
