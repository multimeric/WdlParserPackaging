from wdl_parser import draft_2
import unittest


class DataProcessing(unittest.TestCase):
    def test_parse(self):
        with open('./gatk4-data-processing/processing-for-variant-discovery-gatk4.wdl') as wdlfile:
            tree = draft_2.parse(wdlfile.read())
            self.assertIsNotNone(tree)
