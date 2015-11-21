import unittest
import sbhc


class MockType:
    def __init__(self, spelling, kind=None):
        self.spelling = spelling
        self.kind = kind


class SBHCTestCase(unittest.TestCase):
    def test_safe_name(self):
        self.assertEqual('`class`', sbhc.safe_name('class'))
        self.assertEqual('arg', sbhc.safe_name('arg'))

    def test_strip_prefix(self):
        self.assertEqual('Suffix', sbhc.strip_prefix('ABC', 'ABCSuffix'))
        self.assertEqual('Suffix', sbhc.strip_prefix('ABC', 'Suffix'))

    def test_type_for_type(self):
        self.assertEqual('Bool', sbhc.type_for_type(MockType('BOOL')))
        self.assertEqual('[AnyObject]', sbhc.type_for_type(MockType('NSArray *', sbhc.object_kinds[0])))
        self.assertEqual('[NSURL]', sbhc.type_for_type(MockType('NSArray<NSURL *> *', sbhc.object_kinds[0])))
        self.assertEqual('[String : NSNumber]', sbhc.type_for_type(MockType('NSDictionary<NSString *, NSNumber *> *', sbhc.object_kinds[0])))
        self.assertEqual('Set<String>', sbhc.type_for_type(MockType('NSSet<NSString *> *', sbhc.object_kinds[0])))

    def test_type_for_spelling(self):
        self.assertEqual('NSNumber', sbhc.type_for_spelling('NSNumber *'))


if __name__ == '__main__':
    unittest.main()
