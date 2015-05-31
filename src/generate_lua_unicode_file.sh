#!/bin/bash

emoji_categories=(\
		people
		nature
		food-drink
		celebration
		activity
		travel-places
		objects-symbols)

emoji_category_names=(\
		people
		nature
		symbols
		celebration
		activity
		places
		objects)

CURRENT_DIR=`pwd`
EXPORT_DIR=${CURRENT_DIR}/../export
lua_file_dir=lua_files

cd ${EXPORT_DIR}

[ -d ${lua_file_dir} ] || mkdir ${lua_file_dir}

lua_file_emoji_full=${lua_file_dir}/emoji_full.lua
lua_file_emoji_unicode=${lua_file_dir}/emoji_unicode.lua

echo "------------ generating emoji_full.lua -------------" 

echo "require \"smartinput\" 

local P = {}
P._G = _G

if _REQUIREDNAME == nil then
	emoji_full = P
else
	_G[_REQUIREDNAME] = P
end
setfenv(1, P)
	
local si = _G.smartinput
	
category_recent = {
		
}
" > ${lua_file_emoji_full}

category_index=-1
for category in ${emoji_categories[@]}
do
	echo "######## "$category" ########"
	sed -i'' -e 's/-/_/g' category_unicode/unicode_${category}.txt
	
	category_index=$((category_index+1))
	echo "category_"${emoji_category_names[${category_index}]}" = {" >> ${lua_file_emoji_full}
	
	line_number=0
	while read unicode
	do
		line_number=$((line_number+1))
		echo "		\"${unicode}\", --${line_number}" >> ${lua_file_emoji_full} 
	done < category_unicode/unicode_${category}.txt
	
	echo "}" >> ${lua_file_emoji_full}
	echo >> ${lua_file_emoji_full}
done

echo "return P" >> ${lua_file_emoji_full}

echo "------------ generating emoji_unicode.lua -------------" 

echo "require \"smartinput\"

local P = {}
P._G = _G

if _REQUIREDNAME == nil then
	emoji_unicode = P
else
	_G[_REQUIREDNAME] = P
end
setfenv(1, P)
	
local si = _G.smartinput
	
emoji_list = {" > ${lua_file_emoji_unicode}

for category in ${emoji_categories[@]}
do
	echo "######## "$category" ########"
	
	sed -i'' -e 's/^\\u//g' category_utf8/utf8_${category}.txt

	line_number=0
	while read unicode
	do
		line_number=$((line_number+1))
		utf8_value=`sed -n "${line_number}p" category_utf8/utf8_${category}.txt | sed 's/\\\u/) .. si.u16char(0x/g'`
		echo "		${unicode}			=	si.u16char(0x${utf8_value}),  -- ${category} [${line_number}]" >> ${lua_file_emoji_unicode} 
	done < category_unicode/unicode_${category}.txt
	
	echo >> ${lua_file_emoji_unicode}
done

echo "}" >> ${lua_file_emoji_unicode}

rm category_unicode/*-e
rm category_utf8/*-e
