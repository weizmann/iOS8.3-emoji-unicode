#!/bin/bash

emoji_categories=(\
		people
		nature
		food-drink
		celebration
		activity
		travel-places
		objects-symbols)

CURRENT_DIR=`pwd`
EXPORT_DIR=${CURRENT_DIR}/../export
NEED_SYNC_FILE=${EXPORT_DIR}/emoji.cpp
NOT_SYNCED_UNICODE=${EXPORT_DIR}/not_synced_unicode

cd ${EXPORT_DIR}
cut -d '"' -f 4 ${NEED_SYNC_FILE} | sed -n '/^u/p' > tmp.file

rm ${NOT_SYNCED_UNICODE}
touch ${NOT_SYNCED_UNICODE}

while read unicode
do
	find_unicode=
	for category in ${emoji_categories[@]}
	do
		line_number=0
		while read unicode_in_category
		do
			line_number=$((line_number+1))
			if [[ ${unicode_in_category} == ${unicode} ]]; then
				find_unicode="find"
#echo ${unicode} "is synced"
				break
			fi
		done < category_unicode/unicode_${category}.txt
	
		if [[ -n ${find_unicode} ]]; then
			break
		fi
	done

	if [[ -z ${find_unicode} ]]; then
		already_recorded=
		while read not_synced_unicode
		do
			if [[ ${unicode} == ${not_synced_unicode} ]]; then
				already_recorded="yes"
			fi
		done < ${NOT_SYNCED_UNICODE} 
		if [[ -z ${already_recorded} ]]; then
			echo ${unicode}" not found"
			echo ${unicode} >> ${NOT_SYNCED_UNICODE}
		fi
	fi

done < tmp.file
