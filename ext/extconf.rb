require 'mkmf'
have_library('icui18n')
have_library('icuio')
find_header('unicode/ucol.h',
            '/usr/include',
            '/usr/local/include',
            '/opt/local/include',
            '/usr/local/opt/icu4c/include')
create_makefile('icunicode')
