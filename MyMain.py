# coding=utf-8
from teamcity import is_running_under_teamcity
from teamcity.unittestpy import TeamcityTestRunner

import unittest


class TestTeamcityMessages(unittest.TestCase):
    def testPass(self):
        assert 1 == 1

	def testAssertEqualTrue(self):
	    self.assertEqual("1", "1")
		
    def testAssertEqualFalse(self):
        self.assertEqual("1", "2")

    def testAssertEqualTrueMsg(self):
        self.assertEqual("1", "1", "Both numbers equals!")
		
    def testAssertEqualFalseMsg(self):
        self.assertEqual("1", "2", "Numbers are not equal!")

    def testAssert(self):
        self.assert_(False)

    def testFail(self):
        self.fail("failed")

    def testException(self):
        raise Exception("My test exception message!")


if __name__ == '__main__':
    if is_running_under_teamcity():
	    print ("TeamCityTestRunner")
	    runner = TeamcityTestRunner()
    else:
	    print ("unittest.TextTestRunner")
	    runner = unittest.TextTestRunner()
    unittest.main(testRunner=runner)