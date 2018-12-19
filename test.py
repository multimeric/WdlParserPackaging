import wdl_parser
import unittest


class DataProcessing(unittest.TestCase):
    def test_parse(self):
        with open('./gatk4-data-processing/processing-for-variant-discovery-gatk4.wdl') as wdlfile:
            wdl_parser.draft_2.parse(wdlfile.split())
