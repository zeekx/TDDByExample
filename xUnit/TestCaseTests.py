from WasRun import WasRun
from TestCase import TestCase
# import unittest
from TestResult import TestResult
from TestSuite import TestSuite

class TestCaseTests(TestCase):
    def testTemplateMethod(self):
        self.test = WasRun("testMethod")
        self.test.run()
        assert("setUp testMethod tearDown " == self.test.log)

    def testResult(self):
        test = WasRun("testMethod")
        result = test.run()
        assert("1 run, 0 failed" == result.summary())

    def testFailedResult(self):
        test = WasRun("testBrokenMethod")
        result = test.run()
        assert("1 run, 1 failed" == result.summary())

    def testResultFormatting(self):
        result = TestResult()
        result.testStarted()
        result.testFailed()
        assert("1 run, 1 failed" == result.summary())

    def testSuite(self):
        suite = TestSuite()

        suite.add(WasRun("testMethod"))
        suite.add(WasRun("testBrokenMethod"))

        results = suite.run()
        assert("2 run, 1 failed" == results.summary())



# TestCaseTests("testTemplateMethod").run()
# TestCaseTests("testResult").run()
# TestCaseTests("testFailedResult").run()
TestCaseTests("testResultFormatting").run()
TestCaseTests("testSuite").run()
