

package Apache::Ocsinventory::Plugins::Checkfiles::Map;

use strict;

use Apache::Ocsinventory::Map;

$DATA_MAP{checkfiles} = {
		mask => 0,
		multi => 1,
		auto => 1,
		delOnReplace => 1,
		sortBy => 'LAST_CHECK',
		writeDiff => 0,
		cache => 0,
		fields => {
                PATH => {},
                EXIST => {},
				CONTENT => {},
				LAST_CHECK => {}
	}
};
1;
