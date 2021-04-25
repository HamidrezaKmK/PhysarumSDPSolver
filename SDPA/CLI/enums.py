
import enum

class OperatingSystems(enum.Enum):
    WINDOWS = 0
    LINUX = 1
    def __str__(self):
        if self.value == 0:
            return 'Windows'
        elif self.value == 1:
            return 'Linux'
        else:
            return 'Undefined_OS'

class TestFormats(enum.Enum):
    BLOCK_SPARSE = 0
    SIMPLE = 1
    @staticmethod
    def regex_format():
        return "*.dat-s"
    def __str__(self):
        if self.value == 0:
            return 'dat-s'
        elif self.value == 1:
            return 'simple-sdp'
        else:
            return 'Undefined_test_format'
