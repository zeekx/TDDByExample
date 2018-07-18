from WasRun import WasRun
from TestCase import TestCase
# import unittest

class TestCaseTests(TestCase):
    def setUp(self):
        self.test = WasRun("testMethod")

    def testSetUp(self):
        self.test.run()
        assert(self.test.wasSetUp)

    def testRunning(self):
        #assert(not test.wasRun)
        self.test.run()
        assert(self.test.wasRun)


TestCaseTests("testRunning").run()
TestCaseTests("testSetUp").run()
