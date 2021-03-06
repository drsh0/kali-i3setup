from ipctest import IpcTest
from gi.repository import i3ipc


class TestGetMarks(IpcTest):
    def test_get_marks(self, i3):
        self.open_window()
        i3.command('mark a')
        i3.command('mark --add b')
        self.open_window()
        i3.command('mark "(╯°□°）╯︵ ┻━┻"')

        marks = i3.get_marks()
        assert isinstance(marks, list)
        assert len(marks) == 3
        assert 'a' in marks
        assert 'b' in marks
        assert '(╯°□°）╯︵ ┻━┻' in marks
