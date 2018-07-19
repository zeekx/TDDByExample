from WasRun import WasRun
from TestCase import TestCase
# import unittest

class TestCaseTests(TestCase):
    def testTemplateMethod(self):
        self.test = WasRun("testMethod")
        self.test.run()
        assert("setUp testMethod tearDown " == self.test.log)

TestCaseTests("testTemplateMethod").run()
