from WasRun import WasRun
from TestCase import TestCase
# import unittest

class TestCaseTests(TestCase):
    def testTemplateMethod(self):
        self.test = WasRun("testMethod")
        self.test.run()
        assert("setUp testMethod tearDown " == self.test.log)

    def testResult(self):
        test = WasRun("testMethod")
        result = test.run()
        assert("1 run, 0 failed" == result.summary())

TestCaseTests("testTemplateMethod").run()
TestCaseTests("testResult").run()
