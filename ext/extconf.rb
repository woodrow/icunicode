require 'mkmf'

find_header('unicode/ucol.h',
            '/usr/include',
            '/usr/local/include',
            '/opt/local/include',
            '/usr/local/opt/icu4c/include')

LIB_DIRS=['/usr/local/opt/icu4c/lib', '/usr/lib', '/usr/local/lib', '/opt/local/lib']

find_library('icui18n', nil, *LIB_DIRS)
find_library('icuio', nil, *LIB_DIRS)

create_makefile('icunicode')
