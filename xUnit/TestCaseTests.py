from WasRun import WasRun
from TestCase import TestCase
# import unittest

class TestCaseTests(TestCase):
    def testRunning(self):
        test = WasRun("testMethod")
        assert(not test.wasRun)
        test.run()
        assert(test.wasRun)


TestCaseTests("testRunning").run()
