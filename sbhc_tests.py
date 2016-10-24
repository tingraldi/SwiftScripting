import unittest
import sbhc


class MockType:
    def __init__(self, spelling, kind=None):
        self.spelling = spelling
        self.kind = kind


class SBHCTestCase(unittest.TestCase):
    def test_safe_name(self):
        self.assertEqual('class', sbhc.safe_name('class'))
        self.assertEqual('`var`', sbhc.safe_name('var'))
        self.assertEqual('arg', sbhc.safe_name('arg'))

    def test_strip_prefix(self):
        self.assertEqual('Suffix', sbhc.strip_prefix('ABC', 'ABCSuffix'))
        self.assertEqual('Suffix', sbhc.strip_prefix('ABC', 'Suffix'))
        self.assertEqual('Suffix', sbhc.strip_prefix('', 'Suffix'))

    def test_type_for_type(self):
        self.assertEqual('Bool', sbhc.type_for_type(MockType('BOOL')))
        self.assertEqual('[AnyObject]', sbhc.type_for_type(MockType('NSArray *', sbhc.object_kinds[0])))
        self.assertEqual('[URL]', sbhc.type_for_type(MockType('NSArray<NSURL *> *', sbhc.object_kinds[0])))
        self.assertEqual('[String : NSNumber]', sbhc.type_for_type(MockType('NSDictionary<NSString *, NSNumber *> *', sbhc.object_kinds[0])))
        self.assertEqual('Set<String>', sbhc.type_for_type(MockType('NSSet<NSString *> *', sbhc.object_kinds[0])))

    def test_type_for_spelling(self):
        self.assertEqual('NSNumber', sbhc.type_for_spelling('NSNumber *'))

    def test_enum_case(self):
        self.assertEqual('jpeg', sbhc.enum_case('Prefix', 'PrefixJPEG'))
        self.assertEqual('macOSFormat', sbhc.enum_case('Prefix', 'PrefixMacOSFormat'))
        self.assertEqual('ufsFormat', sbhc.enum_case('Prefix', 'PrefixUFSFormat'))
        self.assertEqual('iso9660Format', sbhc.enum_case('Prefix', 'PrefixISO9660Format'))
        self.assertEqual('none', sbhc.enum_case('Prefix', 'PrefixNone'))
        self.assertEqual('quickTakeFormat', sbhc.enum_case('Prefix', 'PrefixQuickTakeFormat'))


if __name__ == '__main__':
    unittest.main()
