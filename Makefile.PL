use inc::Module::Install;

RTx         'RT-Extension-MergeUsersHistory';
all_from    'lib/RT/Extension/MergeUsersHistory.pm';

my ($lib_path) = $INC{'RT.pm'} =~ /^(.*)[\\\/]/;
my $local_lib_path = "$RT::LocalPath/lib";
substitute( {
        RT_LIB_PATH => $lib_path,
        LOCAL_LIB_PATH => $local_lib_path,
    },
    'sbin/rt-merge-users-history',
);

WriteAll();
