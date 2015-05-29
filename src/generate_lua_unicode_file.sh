#!/bin/sh

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
		food_drink
		celebration
		activity
		travel_places
		objects_symbols)

CURRENT_DIR=`pwd`
EXPORT_DIR=${CURRENT_DIR}/../export
lua_file_dir=lua_files

cd ${EXPORT_DIR}

[ -d ${lua_file_dir} ] || mkdir ${lua_file_dir}

lua_file_name=${lua_file_dir}/emoji_full.lua

echo "require "smartinput" \

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
" > ${lua_file_name}

category_index=0
for category in ${emoji_categories[@]}
do
	echo "######## "$category" ########"
	
	category_index=$((category_index+1))
	echo "category_"${emoji_category_names[${category_index}]}" = {" >> ${lua_file_name}
	
	line_number=0
	while read unicode
	do
		line_number=$((line_number+1))
		echo "		\"${unicode}\", --${line_number}" >> ${lua_file_name} 
	done < category_unicode/unicode_${category}.txt
	
	echo "}" >> ${lua_file_name}
	echo >> ${lua_file_name}
done

echo "return P" >> ${lua_file_name}