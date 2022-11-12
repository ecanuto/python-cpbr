import unittest
from src.hello import *


class TestHello(unittest.TestCase):
    def testsoma(self):
        a = 5
        b = 2
        result = soma(a, b)
        self.assertEqual(result, 7)

    def testsomax(self):
        result = soma(5, 4)
        self.assertEqual(result, 9)
