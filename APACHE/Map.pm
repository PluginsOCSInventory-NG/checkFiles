
 
package Apache::Ocsinventory::Plugins::CheckFiles::Map;
 
use strict;
 
use Apache::Ocsinventory::Map;

$DATA_MAP{checkfiles} = {
		mask => 0,
		multi => 1,
		auto => 1,
		delOnReplace => 1,
		sortBy => 'PATH',
		writeDiff => 0,
		cache => 0,
		fields => {
                PATH => {},
                EXIST => {}
	}
};
1;