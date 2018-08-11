from django.test import TestCase

# Create your tests here.

class DummyTest(TestCase):
    def test_dummy_one(self):
        self.assertEqual('A', 'A')

    def test_dummy_two(self):
        self.assertEqual(1, 1)

    def test_dummy_three(self):
        self.assertEqual(True, True)
